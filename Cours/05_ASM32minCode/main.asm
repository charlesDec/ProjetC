
section .text ;;on place le code dans cette section
global _start ;;le _start servira au linker à savoir ou commencer à executer le code
_start: ;;équivalent du main en C


	;; pour éviter de faire un segfault on doit appeler le syscall sys_exit avant de quitter le programme
	
	mov eax, 1 	;;on affecte la valeur 1 au registre eax
			;;1 représente "l'identifiant" du syscall sys_exit en x86

        mov ebx, 0	;;on stocke dans ebx la valeur de retour du programme (0 signifie que tout s'est bien passé)
	
	int 80h		;;signifie qu'on demande au CPU de prendre en compte la valeur actuelle des registres et d'agir en circonstance
			;;	int 80h == syscall
			;;	(32bit)   (64bit)
