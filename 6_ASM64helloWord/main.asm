section .data ;;on y range les constantes
	
msg: db "HelloWord", 10, 13 	;; on délare un ensemble d'octet avec db
				;;la valeur 10 signifie retour a la ligne en ASCII, 13 signifie retour chariot (retour a gauche de l'ecran)
len: equ ($ - msg)		;;$ signifie l'adresse actuelle, msg indique l'endroit en mémoire ou se situe le début de notre string
				;;l'un moins l'autre donne la longueur du string 


section .text ;;on place le code dans cette section
global _start ;;le _start servira au linker à savoir ou commencer à executer le code
_start: ;;équivalent du main en C


	;;pour écrire notre message on fait appel àu syscall sys_write (1 en linux 64bit)
	mov rax, 1	;;on affecte à rax la valeur du syscall à réaliser, ici 1
	mov rdi, 1	;;l'endoit ou l'on souhaite écrire (1==STDOUT==la sortie standard)
	mov rsi, msg	;;l'adresse du début de notre chaine de charactère en mémoire
	mov rdx, len	;;la taille du message à afficher
	syscall		;;pour que le CPU prennent en comtpte la valeur actuel des registres et agisse en circonstance
	





	;; pour éviter de faire un segfault on doit appeler le syscall sys_exit (60 en linux 64bit) avant de quitter le programme
	
	mov rax, 60 	;;on affecte la valeur 60 au registre rax
			;;60 représente "l'identifiant" du syscall sys_exit 

        mov rdi, 0	;;on stocke dans rdi la valeur de retour du programme (0 signifie que tout s'est bien passé)
	syscall		;;signifie qu'on demande au CPU de prendre en compte la valeur actuelle des registres et d'agir en circonstance
