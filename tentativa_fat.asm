main:
    addi a0, x0, 3; valor que vai entrar na func FAT (argumento)
    jal ra, fat
    add t0, a0, x0
    ebreak


fat:
    addi t0, x0, 1; comparar com 1
    bge a0, t0, depois_if; se o argumento for maiorigual sai
    addi a0, x0, 1
    jalr x0, ra, 0

depois_if: ; aqui entrou no caso de a0 >= 1
    addi sp, sp, -8
    sw sp, a0, 0
    sw sp, ra, 4
    addi a0, a0, -1
    jal ra, fat
    lw t0, sp, 0
    mul a0, a0, t0
    lw ra, sp, 4
    addi sp, sp, 8
    jalr x0, ra, 0

