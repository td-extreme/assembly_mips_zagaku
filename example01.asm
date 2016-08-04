# Tyler Decker
# 3 Aug 2016
# program to show basic arithmetic


.text

# Instruction 		 # Meaning in pseudocode
add $t1, $t2, $t3   	 # $t1 = $t2 + $t3
sub $t1, $t2, $t3 	 # $t1 = $t2 - $t3
and $t1, $t2, $t3        # $t1 = $t2 & $t3 (bitwise and)
or $t1, $t2, $t3         # $t1 = $t2 | $t3 (bitwise or)

# set if equal:
seq $t1, $t2, $t3        # $t1 = $t2 == $t3 ? 1 : 0

# set if less than:
slt $t1, $t2, $t3        # $t1 = $t2 < $t3 ? 1 : 0

# set if less than or equal:
sle $t1, $t2, $t3        # $t1 = $t2 <= $t3 ? 1 : 0
  