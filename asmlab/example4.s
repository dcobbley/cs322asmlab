	.file	"linux.s"     # change this to match your filename
	.text
	.globl	f
f:
### This is where your code begins ...
#average of sum

		movl	$0, %ecx				#init counter to 0
		movl	$0, %edx				#init sum to 0

loop:	movl	(%rdi), %ebx			#put first value into temp
		cmpl	$0, %ebx				#check if temp == 0
		je		done					#else add temp to sum

		addl	(%rdi), %edx
		incl	%ecx					#increment counter
		addq	$4, %rdi				#increment array
		jmp		loop					#jump to loop again

done:	movl 	%edx, %eax
		cltd		#????
		idivl	%ecx

		### This is where your code ends ...

	ret
