TITLE Program Template(template.asm)

; Author:							Sandro Aguilar
; Last Modified : July 25, 2019
; OSU email address : aguilasa@oregonstate.edu
; Course number / section:			CS 271 / 400
; Assignment Number : Project 3
; Due Date : July 28, 2019
; Description:						Program that calculates composite numbers from 1 to 300.
;									User input is validated to verify that the number entered
;									is between 1 and 300. Program prompts user until valid
;									valid data is entered.Finally, the program displays the
;									composite up toand including the nth composite.Results
;									are displayed 10 composites per line with at least 3
;									spaces between the numbers.
;
; Implementation notes :
;	This program is implemented using procedures.
;	All variables are global ... no parameter passing

INCLUDE Irvine32.inc

.data

lowerLimit = 1; tracks minimum # of composite numbers
upperLimit = 300; tracks max # of composite numbers

.code
main PROC
	mov		edx, OFFSET programTitle		;move title string to register
	call	WriteString
	call	ReadInt
	mov		myVal, eax
	call	CrLf


	exit	; exit to operating system
main ENDP

; (insert additional procedures here)

END main
