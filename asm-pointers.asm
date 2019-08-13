TITLE Random Sorter(Assignment5.asm)

; Author: Pedro Torres Picon(torrespp@oregonstate.edu)
; Course / Project ID : CS271 - 400 / Programming Assignment #5
; Due Date : 11 / 21 / 2016
; Description: A program that takes an integer from the user
; between 10 and 200, produces that many random numbers, prints
; them, sorts them in descending order, calculates the median,
; and displays the sorted list

INCLUDE Irvine32.inc


.data
myVal		DWORD	10


.code

main PROC
	mov		eax, myVal
	call	WriteDec
	call	CrLf

	push	OFFSET myVal
	call	changeVal

	mov		eax, myVal
	call	WriteDec
	call	CrLf
	
	
	exit					;exit to operating system

main ENDP


changeVal PROC
	push	ebp
	mov		ebp, esp

	mov		edx, [ebp + 8]
	mov		eax, [edx]
	call	WriteDec
	call	CrLf

	mov		eax, 20
	mov		[edx], eax


	pop		ebp
	ret		4
changeVal ENDP




END main
