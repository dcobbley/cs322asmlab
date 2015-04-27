	.file	"linux.s"     # change this to match your filename
	.text
	.globl	f
f:
### This is where your code begins ...

        #movl    $42, %eax     # replace this with your code!

		
		#movl	(%rdi), %eax		#prints first element of array
		#incl	%eax
		#movl	%eax, (%rdi)
		#adds one to the first element of the array


#parens are liek *
#go to the address stored in this value

#movq for 64 bit registers
#movl for 32 bit


#find the length of the array
	movl	$0, %eax		#ecx = count of the numbers seen
loop:	movl	(%rdi), %edx
	cmpl	$0,%edx			#test if eax is empty, for empty array
	je		done
	incl	%eax			#counter for array
	addq 	$4, %rdi		#rdi is a 64 bit reg, so use the q to fill with 0's
	jmp		loop

done:
	
### This is where your code ends ...

	ret

#rdi is the start of the array
#rax is where the result goes
