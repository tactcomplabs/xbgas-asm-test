	.file	"xbgas_Imm1_KF.s"
	.option nopic
	.text
	.align	1
	.globl	TestFunc
	.type	TestFunc, @function
TestFunc:
        eaddi     a5,0x2000,e10

	.size	TestFunc, .-TestFunc

#-- EOF
