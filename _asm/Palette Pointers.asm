; ---------------------------------------------------------------------------
; Palette pointers
; ---------------------------------------------------------------------------

palp:	macro paladdress,ramaddress,colours
	dc.l paladdress
	dc.w ramaddress, (colours>>1)-1
	endm

PalPointers:

; palette address, RAM address, colours

ptr_Pal_SegaBG:		palp	Pal_SegaBG,$FB00,$40		; 0 - Sega logo
			even


palid_SegaBG:		equ (ptr_Pal_SegaBG-PalPointers)/8