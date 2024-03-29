.global crtStart
.global main
.global trap

crtStart:
  j crtInit
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  
.global  trap_entry
.align(2) //mtvec require 32 bits allignement
trap_entry:
  addi sp,sp, -16*4
  sw x1,   0*4(sp)
  sw x5,   1*4(sp)
  sw x6,   2*4(sp)
  sw x7,   3*4(sp)
  sw x10,  4*4(sp)
  sw x11,  5*4(sp)
  sw x12,  6*4(sp)
  sw x13,  7*4(sp)
  sw x14,  8*4(sp)
  sw x15,  9*4(sp)
  sw x16, 10*4(sp)
  sw x17, 11*4(sp)
  sw x28, 12*4(sp)
  sw x29, 13*4(sp)
  sw x30, 14*4(sp)
  sw x31, 15*4(sp)
  call trap
  lw x1 ,  0*4(sp)
  lw x5,   1*4(sp)
  lw x6,   2*4(sp)
  lw x7,   3*4(sp)
  lw x10,  4*4(sp)
  lw x11,  5*4(sp)
  lw x12,  6*4(sp)
  lw x13,  7*4(sp)
  lw x14,  8*4(sp)
  lw x15,  9*4(sp)
  lw x16, 10*4(sp)
  lw x17, 11*4(sp)
  lw x28, 12*4(sp)
  lw x29, 13*4(sp)
  lw x30, 14*4(sp)
  lw x31, 15*4(sp)
  addi sp,sp, 16*4
  mret 
  .text

crtInit:
  /*.option push
  .option norelax
  la gp, __global_pointer$
  .option pop*/
  la sp, _stack_start

bss_init:
  la a0, _bss_start
  la a1, _bss_end
bss_loop:
  beq a0,a1,bss_done
  sw zero,0(a0)
  add a0,a0,4
  j bss_loop
bss_done:

ctors_init:
  la a0, _ctors_start
  addi sp,sp,-4
ctors_loop:
  la a1, _ctors_end
  beq a0,a1,ctors_done
  lw a3,0(a0)
  add a0,a0,4
  sw a0,0(sp)
  jalr  a3
  lw a0,0(sp)
  j ctors_loop
ctors_done:
  addi sp,sp,4


  li a0, 0x880     //880 enable timer + external interrupts
  csrw mie,a0
  li a0, 0x1808     //1808 enable interrupts
  csrw mstatus,a0

  call main
infinitLoop:
  j infinitLoop