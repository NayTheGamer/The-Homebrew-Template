; ---------------------------------------------------------------------------
; Palette pointers
; ---------------------------------------------------------------------------

palp:	macro paladdress,ramaddress,colours
	dc.l paladdress
	dc.w ramaddress, (colours>>1)-1
	endm

PalPointers:

; palette address, RAM address, colours

ptr_Pal_Gamemode01:		palp	Pal_Gamemode01,$FB00,$40		; 0 - Game mode 01
			even


palid_Gamemode01:		equ (ptr_Pal_Gamemode01-PalPointers)/8