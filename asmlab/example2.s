	.file	"linux.s"     # change this to match your filename
	.text
	.globl	f
f:
### This is where your code begins ...
# Return the largest number from the array

		movl	$0, %edx			#init current to 0
		movl	$0, %eax			#init max to 0
loop:	movl	(%rdi), %edx		#put first value into current
		cmpl	$0, %edx			#check if equal to zero
		je		done				#je to done if true
		cmpl	%eax, %edx			#check if current > max
		jle		notgtloop			#jump to if true, set max = current
	   	movl	%edx, %eax			#set max	
				#either case itterate array element
				#do loop again

notgtloop:	addq	$4, %rdi			
			jmp 	loop
done:
### This is where your code ends ...

	ret
