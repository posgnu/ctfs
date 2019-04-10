import gdb
import string

valid_chars = string.printable

gdb.execute("file future_fun")
gdb.execute("handle SIGSEGV nostop noprint pass")
gdb.execute("handle SIGILL nostop noprint pass")

class MyBreakpoint(gdb.Breakpoint):
    def stop(self):
        return False

bp = MyBreakpoint("*0x805262f")
bp.ignore_count = 90000000

flag = ""
while not flag.endswith("}"):
    for char in valid_chars:
        bp.hit_count = 0

        newflag = flag + char

        with open("flagfile", "w") as f:
            f.write(newflag + "%")
            f.write('\n')

        exec_command = 'r < flagfile > /dev/null'
        gdb.write("Trying: " + newflag + "\n")
        gdb.execute(exec_command)

        if bp.hit_count > (len(newflag) + 1) * 1000:
            gdb.write("[!] Found character: " + newflag + "\n")
            flag = newflag
            break
        else:
            gdb.write("Hits: {}\n".format(bp.hit_count))
            pass

