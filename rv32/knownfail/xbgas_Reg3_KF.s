	.file	"xbgas_Reg3_KF.s"
	.option nopic
	.text
	.align	1
	.globl	TestFunc
	.type	TestFunc, @function
TestFunc:
        erld     a0,e6,e10

	.size	TestFunc, .-TestFunc

#-- EOF
