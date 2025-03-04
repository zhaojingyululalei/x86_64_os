    .text
	#include "cpu_cfg.h"
    .extern kernel_init
    .global _start

_start:
    
entry_kernel:
    mov $SELECTOR_KERNEL_DATA_SEG,%ax
    mov %ax, %ds
	mov %ax, %ss
	mov %ax, %es
	mov %ax, %fs
	mov %ax, %gs


    push 4(%esp) # 将boot_info入栈
    jmp .

    .data
str_buf:.space 128
    .bss
data_buf:.space 256

