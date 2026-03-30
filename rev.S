	.file	"rev.S"
	.text
.global	rev
rev:
	mov	r15, r14
	jmp	2f
1:
	inc r14
2:
	cmp.b #0, 0(r14)
	jne	1b
	dec r14
	jmp	4f
3:
	xor.b @r14, 0(r15)
	xor.b @r15, 0(r14)
	xor.b @r14, 0(r15)
	inc r15
	dec r14
4:
	cmp	r14, r15
	jl	3b
	ret
