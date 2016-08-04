# Tyler Decker
# 3 aug 2016
# example to show how system calls work


.text

li    $v0, 5          # system call to input int
syscall

add   $a0, $v0, $v0   # $a0 = $v0 + $v0

li    $v0, 1          # system call to print int
syscall

li    $v0, 10         # system call to end
syscall
