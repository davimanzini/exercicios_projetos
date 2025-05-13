addi a0, x0, 1; a = 1
addi a1, x0, 2; b = 2
addi a2, x0, 3; c = 3
mul a1, a1, a1; b = b pwr2
slli a0, a0, 2; a x 4
mul a0, a0, a2
sub a0, a1, a0
ebreak