	.file	"xbgas_Reg2_KF.s"
	.option nopic
	.text
	.align	1
	.globl	TestFunc
	.type	TestFunc, @function
TestFunc:
        esd     a0,0(e0)

	.size	TestFunc, .-TestFunc

#-- EOF
