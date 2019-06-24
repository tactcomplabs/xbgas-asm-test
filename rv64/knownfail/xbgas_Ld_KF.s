	.file	"xbgas_Reg_KF.s"
	.option nopic
	.text
	.align	1
	.globl	TestFunc
	.type	TestFunc, @function
TestFunc:
        ld     a0,0(e0)

	.size	TestFunc, .-TestFunc

#-- EOF
