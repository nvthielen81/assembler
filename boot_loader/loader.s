bits 32
jmp short bootloader_start


; data waarde van de master bood record
;---------------------------------------------------------------------------------------------

OEMLABEL db "NESTOR", 0
BytesPerSector dw 2048               ; a dw is qaud word binary number tabel for the sector size
SectorsPerCluster db 1               ; a db the perfix the bite reading 1 bite a time nummer per 0 or 1


bootloader_start:

    mov ax, 0x07C0                    ; set the segment address for the bootloader
    mov ds, ax                        ; set the data segment to the bootloader segment
    mov es, ax                        ; set the extra segment to the bootloader segment
    mov ss, ax                        ; set the stack segment to the bootloader segment
    mov sp, 0x7C00                    ; set the stack pointer to the top of the bootloader

 

    ; Jump to the kernel entry point
    jmp 0x0000:0x7E00                 ; jump to the kernel entry point at 0x7E00