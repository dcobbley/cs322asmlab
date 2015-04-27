	.file	"linux.s"     # change this to match your filename
	.text
	.globl	f
f:
### This is where your code begins ...
# Return the position of the largest number from the array

		movl	$0, %edx			#init current to 0
		movl	$0, %eax			#init max to 0
		movl 	$0, %esi			#init current counter
		movl 	$0, %ecx			#init max counter
loop:	movl	(%rdi), %edx		#put first value into current
		cmpl	$0, %edx			#check if equal to zero
		je		done				#je to done if true
		cmpl	%eax, %edx			#check if current > max
		jle		notgtloop			#jump to if true, set max = current
	   	movl	%edx, %eax			#set max	
		movl	%esi, %ecx			#set max counter
				#either case itterate array element
				#do loop again

notgtloop:	addq	$4, %rdi			
			incl	%esi
			jmp 	loop
done:		movl 	%ecx, %eax
### This is where your code ends ...

	ret
