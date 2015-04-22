	.file	"linux.s"     # change this to match your filename
	.text
	.globl	f
f:
### This is where your code begins ...

        #movl    $42, %eax     # replace this with your code!

#put the first value of the array into a register
#		movl	(%rdi),%eax		#put value of rdi into eax
#		movl	$0, %ecx		#put zero in the counter
#itterate
#loop:	
#		incl	%ecx			#increment counter 
#		addq	$4, %rdi		#move to next element
#		movl	(%rdi),%edx		#put the next element into temp edx
#		cmpl 	$0, %edx		#compare if edx is empty
#		je		done
#								#compare current with biggest value so far
#		cmpl	%edx,%eax		#compare new,origional
								#if current is bigger, replace with register
#		jge		loop
								#else loop again until end
#		movl	%edx, %eax
#		movl	%ecx, %ebx
#		jmp		loop	
#done:

#		movl	%ebx, %eax		#return the result
### This is where your code ends ...

#return avg of total element
		movl	$0, %edx		#init edx register with zero for storing sum
		movl	$0, %ecx		#init ecx for counter

loop:	movl 	(%rdi),%ebx
		cmpl	$0,	%ebx		#check if empty
		je		done

		addl	(%rdi), %edx	#add current value to the sum total
		addq	$4, %rdi
		incl	%ecx			#increment counter
		jmp		loop

done:	movl %edx, %eax
		cltd
		idivl %ecx

	ret


	#jones code
#		movl	$1, %ecx
#		movl	(%rdi), %eax
#loop:	addq	$4,%rdi
#		movl	(%rdi, %edx
#		cmpl	$0,%edx
#		je		done
#		addl	%edx, %eax
#		incl	%ecx
#		jmp		loop

#done:
#		cltd
#		idivl %ecx
