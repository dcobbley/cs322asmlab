	.file	"linux.s"     # change this to match your filename
	.text
	.globl	f
f:
### This is where your code begins ...
# Return the length of the input array in %eax

#        movl    $42, %eax     # replace this with your code!
	movl	$0, %eax		#init counter to zero
loop:	movl	(%rdi), %edx	#get the first element in the array
	cmpl	$0, %edx		#check if null
	je		done
	incl	%eax			#else increment
	
	addq	$4, %rdi		#dont forget to itterate the array
	jmp		loop
done:
### This is where your code ends ...

	ret
