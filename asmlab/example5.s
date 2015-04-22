	.file	"linux.s"     # change this to match your filename
	.text
	.globl	f
f:
### This is where your code begins ...

    #    movl    $42, %eax     # replace this with your code!
	#reverse the order of elements in an array
	#find pointer to end
	#find pointer to beginning
	#swap them
	# then increment by 4 and decrement by 4
	#	moving closer and closer to the middle


	movl	(%rdi), %eax	#put array element in eax
	compl	$0, %edx		#compare to see if empty
	je		done

#movq for 64 bit registers
#movl for 32 bit
### This is where your code ends ...
done:
	ret
