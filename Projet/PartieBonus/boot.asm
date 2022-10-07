


Init: 		;;adresse du début du code




mov ah, 0x0e	;;stocke la valeur 0x0e dans ah 	
		;;passe le mode video en tty mode 80*25 (comme le temrinal par défault) à la prochaine interuption du service video


mov al, 'H'	;;stocke le caractère 'H' dans  al
int 0x10	;;interuption du BIOS des services videos, dans le cas présent affiche le contenu d'al

mov al, 'e'	;;stocke le caractère 'e' dans  al
int 0x10	;;interuption du BIOS des services videos, dans le cas présent affiche le contenu d'al

mov al, 'l'	;;stocke le caractère 'l' dans  al
int 0x10	;;interuption du BIOS des services videos, dans le cas présent affiche le contenu d'al

mov al, 'l'	;;stocke le caractère 'l' dans  al
int 0x10	;;interuption du BIOS des services videos, dans le cas présent affiche le contenu d'al

mov al, 'o'	;;stocke le caractère 'l' dans  al
int 0x10	;;interuption du BIOS des services videos, dans le cas présent affiche le contenu d'al




times 510 - ($ - Init) db 0 	;;rempli l'espace non utilisé par des octets à 0
dw 0xaa55			;;signatue du bootsector 0xaa55
