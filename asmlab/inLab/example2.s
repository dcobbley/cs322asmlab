	.file	"linux.s"     # change this to match your filename
	.text
	.globl	f
f:
### This is where your code begins ...

        #movl    $42, %eax     # replace this with your code!

#put the first value of the array into a register
		movl	(%rdi),%eax		#put value of rdi into eax
#itterate
loop:	
		addq	$4, %rdi		#move to next element
		movl	(%rdi),%edx		#put the next element into temp edx
		cmpl 	$0, %edx		#compare if edx is empty
		je		done
								#compare current with biggest value so far
		cmpl	%edx,%eax		#compare new,origional
								#if current is bigger, replace with register
		jge		loop
								#else loop again until end
		movl	%edx, %eax
		jmp		loop	
done:


### This is where your code ends ...

	ret
