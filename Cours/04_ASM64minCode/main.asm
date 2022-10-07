
section .text ;;on place le code dans cette section
global _start ;;le _start servira au linker à savoir ou commencer à executer le code
_start: ;;équivalent du main en C

	;; pour éviter de faire un segfault on doit appeler le syscall sys_exit avant de quitter le programme
	
	mov rax, 60 	;;on affecte la valeur 60 au registre rax
			;;60 représente "l'identifiant" du syscall sys_exit 

        mov rdi, 0	;;on stocke dans rdi la valeur de retour du programme (0 signifie que tout s'est bien passé)
	syscall		;;signifie qu'on demande au CPU de prendre en compte la valeur actuelle des registres et d'agir en circonstance
