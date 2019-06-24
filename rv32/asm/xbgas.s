	.file	"xbgas.s"
	.option nopic
	.text
	.align	1
	.globl	TestFunc
	.type	TestFunc, @function
TestFunc:
RegisterTests:
        #-- register tests
        elw     a0,0(ra)
        elw     a0,0(sp)
        elw     a0,0(gp)
        elw     a0,0(tp)
        elw     a0,0(t0)
        elw     a0,0(t1)
        elw     a0,0(t2)
        elw     a0,0(s0)
        elw     a0,0(s1)
        elw     a0,0(a0)
        elw     a1,0(a1)
        elw     a2,0(a2)
        elw     a3,0(a3)
        elw     a4,0(a4)
        elw     a5,0(a5)
        elw     a6,0(a6)
        elw     a7,0(a7)
        elw     x10,0(x0)
        elw     x11,0(x1)
        elw     x12,0(x2)
        elw     x13,0(x3)
        elw     x14,0(x4)
        elw     x15,0(x5)
        elw     x16,0(x6)
        elw     x17,0(x7)
        elw     x18,0(x8)
        elw     x19,0(x9)
        elw     x20,0(x10)
        elw     x21,0(x11)
        elw     x22,0(x12)
        elw     x23,0(x13)
        elw     x24,0(x14)
        elw     x25,0(x15)
        elw     x26,0(x16)
        elw     x27,0(x17)
        elw     x28,0(x18)
        elw     x29,0(x19)
        elw     x30,0(x20)
        elw     x31,0(x21)

        elw     a0,0(ra)
        elw     a0,0(sp)
        elw     a0,0(gp)
        elw     a0,0(tp)
        elw     a0,0(t0)
        elw     a0,0(t1)
        elw     a0,0(t2)
        elw     a0,0(s0)
        elw     a0,0(s1)
        elw     a0,0(a0)
        elw     a1,0(a1)
        elw     a2,0(a2)
        elw     a3,0(a3)
        elw     a4,0(a4)
        elw     a5,0(a5)
        elw     a6,0(a6)
        elw     a7,0(a7)
        elw     x10,0(x0)
        elw     x11,0(x1)
        elw     x12,0(x2)
        elw     x13,0(x3)
        elw     x14,0(x4)
        elw     x15,0(x5)
        elw     x16,0(x6)
        elw     x17,0(x7)
        elw     x18,0(x8)
        elw     x19,0(x9)
        elw     x20,0(x10)
        elw     x21,0(x11)
        elw     x22,0(x12)
        elw     x23,0(x13)
        elw     x24,0(x14)
        elw     x25,0(x15)
        elw     x26,0(x16)
        elw     x27,0(x17)
        elw     x28,0(x18)
        elw     x29,0(x19)
        elw     x30,0(x20)
        elw     x31,0(x21)

        elh     a0,0(ra)
        elh     a0,0(sp)
        elh     a0,0(gp)
        elh     a0,0(tp)
        elh     a0,0(t0)
        elh     a0,0(t1)
        elh     a0,0(t2)
        elh     a0,0(s0)
        elh     a0,0(s1)
        elh     a0,0(a0)
        elh     a1,0(a1)
        elh     a2,0(a2)
        elh     a3,0(a3)
        elh     a4,0(a4)
        elh     a5,0(a5)
        elh     a6,0(a6)
        elh     a7,0(a7)
        elh     x10,0(x0)
        elh     x11,0(x1)
        elh     x12,0(x2)
        elh     x13,0(x3)
        elh     x14,0(x4)
        elh     x15,0(x5)
        elh     x16,0(x6)
        elh     x17,0(x7)
        elh     x18,0(x8)
        elh     x19,0(x9)
        elh     x20,0(x10)
        elh     x21,0(x11)
        elh     x22,0(x12)
        elh     x23,0(x13)
        elh     x24,0(x14)
        elh     x25,0(x15)
        elh     x26,0(x16)
        elh     x27,0(x17)
        elh     x28,0(x18)
        elh     x29,0(x19)
        elh     x30,0(x20)
        elh     x31,0(x21)

        elb     a0,0(ra)
        elb     a0,0(sp)
        elb     a0,0(gp)
        elb     a0,0(tp)
        elb     a0,0(t0)
        elb     a0,0(t1)
        elb     a0,0(t2)
        elb     a0,0(s0)
        elb     a0,0(s1)
        elb     a0,0(a0)
        elb     a1,0(a1)
        elb     a2,0(a2)
        elb     a3,0(a3)
        elb     a4,0(a4)
        elb     a5,0(a5)
        elb     a6,0(a6)
        elb     a7,0(a7)
        elb     x10,0(x0)
        elb     x11,0(x1)
        elb     x12,0(x2)
        elb     x13,0(x3)
        elb     x14,0(x4)
        elb     x15,0(x5)
        elb     x16,0(x6)
        elb     x17,0(x7)
        elb     x18,0(x8)
        elb     x19,0(x9)
        elb     x20,0(x10)
        elb     x21,0(x11)
        elb     x22,0(x12)
        elb     x23,0(x13)
        elb     x24,0(x14)
        elb     x25,0(x15)
        elb     x26,0(x16)
        elb     x27,0(x17)
        elb     x28,0(x18)
        elb     x29,0(x19)
        elb     x30,0(x20)
        elb     x31,0(x21)

        elhu     a0,0(ra)
        elhu     a0,0(sp)
        elhu     a0,0(gp)
        elhu     a0,0(tp)
        elhu     a0,0(t0)
        elhu     a0,0(t1)
        elhu     a0,0(t2)
        elhu     a0,0(s0)
        elhu     a0,0(s1)
        elhu     a0,0(a0)
        elhu     a1,0(a1)
        elhu     a2,0(a2)
        elhu     a3,0(a3)
        elhu     a4,0(a4)
        elhu     a5,0(a5)
        elhu     a6,0(a6)
        elhu     a7,0(a7)
        elhu     x10,0(x0)
        elhu     x11,0(x1)
        elhu     x12,0(x2)
        elhu     x13,0(x3)
        elhu     x14,0(x4)
        elhu     x15,0(x5)
        elhu     x16,0(x6)
        elhu     x17,0(x7)
        elhu     x18,0(x8)
        elhu     x19,0(x9)
        elhu     x20,0(x10)
        elhu     x21,0(x11)
        elhu     x22,0(x12)
        elhu     x23,0(x13)
        elhu     x24,0(x14)
        elhu     x25,0(x15)
        elhu     x26,0(x16)
        elhu     x27,0(x17)
        elhu     x28,0(x18)
        elhu     x29,0(x19)
        elhu     x30,0(x20)
        elhu     x31,0(x21)

        elbu     a0,0(ra)
        elbu     a0,0(sp)
        elbu     a0,0(gp)
        elbu     a0,0(tp)
        elbu     a0,0(t0)
        elbu     a0,0(t1)
        elbu     a0,0(t2)
        elbu     a0,0(s0)
        elbu     a0,0(s1)
        elbu     a0,0(a0)
        elbu     a1,0(a1)
        elbu     a2,0(a2)
        elbu     a3,0(a3)
        elbu     a4,0(a4)
        elbu     a5,0(a5)
        elbu     a6,0(a6)
        elbu     a7,0(a7)
        elbu     x10,0(x0)
        elbu     x11,0(x1)
        elbu     x12,0(x2)
        elbu     x13,0(x3)
        elbu     x14,0(x4)
        elbu     x15,0(x5)
        elbu     x16,0(x6)
        elbu     x17,0(x7)
        elbu     x18,0(x8)
        elbu     x19,0(x9)
        elbu     x20,0(x10)
        elbu     x21,0(x11)
        elbu     x22,0(x12)
        elbu     x23,0(x13)
        elbu     x24,0(x14)
        elbu     x25,0(x15)
        elbu     x26,0(x16)
        elbu     x27,0(x17)
        elbu     x28,0(x18)
        elbu     x29,0(x19)
        elbu     x30,0(x20)
        elbu     x31,0(x21)

        eaddix  e0,0,e1
        eaddix  e2,0,e3
        eaddix  e4,0,e5
        eaddix  e6,0,e7
        eaddix  e8,0,e9
        eaddix  e10,0,e11
        eaddix  e12,0,e13
        eaddix  e14,0,e15
        eaddix  e16,0,e17
        eaddix  e18,0,e19
        eaddix  e20,0,e21
        eaddix  e22,0,e23
        eaddix  e24,0,e25
        eaddix  e26,0,e27
        eaddix  e28,0,e29
        eaddix  e30,0,e31
LoadTests:
        #-- loads
        elw     a5,40(x31)
        elw     a5,40(x31)
        elh     a5,40(x31)
        elb     a5,40(x31)
        elhu    a5,40(x31)
        elbu    a5,40(x31)
        #-- extended quad loads
StoreTests:
        #-- stores
        esw     a5,40(x31)
        esh     a5,40(x31)
        esb     a5,40(x31)
        #-- extended quad stores
RawLoadStoreTests:
        #-- raw load/stores
        erlw    a5,a6,e10
        erlh    a5,a6,e10
        erlb    a5,a6,e10
        erlhu   a5,a6,e10
        erlbu   a5,a6,e10
        ersw    a5,a5,e10
        ersh    a5,a5,e10
        ersb    a5,a5,e10
        erse    e10,a5,e11

        eaddi   a5,-32,e10
        eaddi   a5,-16,e10
        eaddi   a5,-8,e10
        eaddi   a5,0,e10
        eaddi   a5,8,e10
        eaddi   a5,16,e10
        eaddi   a5,32,e10

        eaddie  e10,-32,a5
        eaddie  e10,-16,a5
        eaddie  e10,-8,a5
        eaddie  e10,0,a5
        eaddie  e10,8,a5
        eaddie  e10,16,a5
        eaddie  e10,32,a5

        eaddix   e21,-32,e10
        eaddix   e21,-16,e10
        eaddix   e21,-8,e10
        eaddix   e21,0,e10
        eaddix   e21,8,e10
        eaddix   e21,16,e10
        eaddix   e21,32,e10

	.size	TestFunc, .-TestFunc

#-- EOF
