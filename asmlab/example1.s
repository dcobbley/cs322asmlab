	.file	"linux.s"     # change this to match your filename
	.text
	.globl	f
f:
### This is where your code begins ...

        #movl    $42, %eax     # replace this with your code!
		movl	(%rdi), %eax		#prints first element of array
		incl	%eax
		movl	%eax, (%rdi)
		#adds one to the first element of the array
#parens are liek *
#go to the address stored in this value

#movq for 64 bit registers
#movl for 32 bit
### This is where your code ends ...

	ret
