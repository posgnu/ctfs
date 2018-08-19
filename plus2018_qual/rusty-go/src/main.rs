extern crate rand;

use std::process::exit;
use rand::Rng;
use std::{fs::File, io::*, fmt};

static DX: [i8; 4] = [0, 1, -1, 0];
static DY: [i8; 4] = [1, 0, 0, -1];
static N: usize = 19;
static mut LAST_X: usize = 0;
static mut LAST_Y: usize = 0;

#[derive(Debug, PartialEq, Copy, Clone)]
enum Space {
    Empty,
    White,
    Black,
}

fn flag() {
    println!("Congratulations!");
    let mut f = File::open("flag").expect("file not found");
    let mut contents = String::new();
    f.read_to_string(&mut contents)
        .expect("error in file reading");
    print!("{}", contents);
    exit(0)
}

fn neighbor(x: usize, y: usize, i: usize) -> (Option<usize>, Option<usize>) {
    let a = x as i8 + DX[i];
    let b = y as i8 + DY[i];

    if a < 0 || a >= N as i8 || b < 0 || b >= N as i8
    {
        return (None, None) 
    }
    (Some(a as usize), Some(b as usize))
}

fn alive_(brd: [[Space;19]; 19], x: usize, y: usize, mut vst: Vec<(usize, usize)>) -> bool {
    vst.push((x,y));
    for i in 0..4 {
        let (a, b) = neighbor(x, y, i);
        if a.is_none() {
            continue 
        }
        let a = a.unwrap();
        let b = b.unwrap();
         if brd[a][b] == Space::Empty {
             return true
        }
        if brd[a][b] != brd[x][y]{
            continue 
        }
        if vst.contains(&(a,b)) {
            continue 
        }
        if alive_(brd, a, b, vst.clone()) {
            return true 
        }
    }
    false
}

fn capture_(brd_: [[Space;19]; 19], hand: Space) -> bool {
    let mut brd = brd_;
    for x in 0..N {
        for y in 0..N {
            if brd[x][y] == Space::Empty || brd[x][y] == hand {
                continue 
            }
            if !alive_(brd, x, y, Vec::new()) {
                return true 
            }
            capture(&mut brd, x, y)
        }
    }
    false
}

fn capture(brd: &mut [[Space;19]; 19], x: usize, y: usize) {
    let hd = brd[x][y];
    brd[x][y] = Space::Empty;
    for i in 0..4 {
        let (a, b) = neighbor(x, y, i);
        if a.is_none() {
            continue
        }
        let a = a.unwrap();
        let b = b.unwrap();
        if brd[a][b] != hd {
            continue 
        }
        capture(brd, a, b)
    }
}

fn will_capture(brd_: [[Space;19]; 19], x: usize, y: usize, hand: Space) -> bool {
    let mut brd = brd_;
    brd[x][y] = hand;
    if capture_(brd, hand) {
        return true 
    }
    false
}

fn play_(brd_: [[Space;19]; 19], x: usize, y: usize, hand: Space) -> bool {
    let mut brd = brd_;
    if brd[x][y] != Space::Empty {
        return false 
    }
    brd[x][y] = hand;
    if capture_(brd, hand) {
        return true 
    }
    if !alive_(brd, x, y, Vec::new()) {
        return false 
    }
    true
}

fn ai(first: bool, brd: [[Space;19]; 19], hand: Space) -> (usize, usize) {
    
    if first {
        return (N/2, N/2) 
    }
    unsafe {
    let x = N - 1 - LAST_X;
    let y = N - 1 - LAST_Y;
    
    if play_(brd, x, y, hand) {
        return (x, y) 
    }
    let mut cand = Vec::new();
    for i in 0..N {
        for j in 0..N {
            if brd[i][j] != Space::Empty {
                continue 
            }
            if play_(brd, i, j, hand) {
                cand.push((i, j)) 
            }
        }
    }
    *rand::thread_rng().choose(&cand).unwrap()
    }
}

fn show(brd: [[Space;19]; 19]) {
    println!("");
    for i in 0..N {
        for j in 0..N {
            print!("{}", brd[i][j]);
        }
        println!("");
    }
}

fn player(brd: [[Space;19]; 19], hand: Space) -> (usize, usize) {
    show(brd);
    let mut input = String::new();
    stdin().read_line(& mut input).expect("Input error");
    let mut parts = input.split_whitespace().map(|s| s.parse::<i8>());
    let a = parts.next().unwrap().unwrap();
    let b = parts.next().unwrap().unwrap();
    if a < 0 || a as usize >= N || b < 0 || b as usize >= N {
        exit(1) 
    }
    if !play_(brd, a as usize, b as usize, hand) {
        exit(1) 
    }
    (a as usize, b as usize)
}

fn win(brd: [[Space;19]; 19]) -> bool {
    let mut a = 0;
    let mut b = 0;

    for space in brd.iter().flat_map(|r| r.iter()) {
            if *space == Space::Black {
                b += 1;
            } else if *space == Space::White {
                a += 1;
            }
    }
    a > b
}

fn color_of(who: usize) -> Space {
    [Space::Black, Space::White][who]
}

fn exchg(cur: Space) -> Space {
    if cur == Space::White {
        Space::Black
     } else { 
         Space::White
     }
}

impl<'a> fmt::Display for Space {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        match self {
            Space::Empty => write!(f, "{:2}", ' '),
            Space::White => write!(f, "{:2}", 'O'),
            Space::Black => write!(f, "{:2}", '@'),
        }
    }
}

fn main() {
    let mut brd = [[Space::Empty;19];19];
    let mut who = 0;
    let mut x;
    let mut y;
    let mut first = true;

    loop {
        let color = color_of(who);
        if color == Space::Black {
            let (a, b) = ai(first, brd, color);
            x = a;
            y = b;
            first = false;
        } else {
            let (a, b) = player(brd, color);
            x = a;
            y = b;
        }
        brd[x][y] = color;
        if who == 1 && will_capture(brd, x, y, color) {
            println!("Space's power activated!");
            brd[x][y] = exchg(brd[x][y]);
        }
        for a in 0..N {
            for b in 0..N {
                if brd[a][b] == Space::Empty || brd[a][b] == color {
                    continue 
                }
                if !alive_(brd, a, b, Vec::new()) {
                    capture(&mut brd, a, b) 
                }
            }
        }
        unsafe {
        LAST_X = x;
        LAST_Y = y;
        }
        who = 1 - who;
        if win(brd) {
            show(brd);
            flag();
        }
    }
}
