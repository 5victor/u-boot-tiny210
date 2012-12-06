#include <common.h>

#ifdef CONFIG_BACKTRACE

/*
 * Stack frame layout:
 *             optionally saved caller registers (r4 - r10)
 *             saved fp
 *             saved sp
 *             saved lr
 *    frame => saved pc
 *             optionally saved arguments (r0 - r3)
 * saved sp => <next word>
 *
 * Functions start with the following code sequence:
 *                  mov   ip, sp
 *                  stmfd sp!, {r0 - r3} (optional)
 * corrected pc =>  stmfd sp!, {..., fp, ip, lr, pc}
 */

void print_backtrace(void)
{
	register unsigned long fp;
	asm volatile ("mov %[fp], fp"
		: [fp] "=r" (fp)
		:);

	while (fp != 0) {
		printf("lr: %08x\n", *(unsigned long *)(fp - 4));
		fp = *(unsigned long *)(fp - 12);
	}
}

#endif
