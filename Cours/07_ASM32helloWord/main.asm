section .data ;;on y range les constantes
	
msg: db "HelloWord", 10, 13 	;; on délare un ensemble d'octet avec db
				;;la valeur 10 signifie retour a la ligne en ASCII, 13 signifie retour chariot (retour a gauche de l'ecran)
len: equ ($ - msg)		;;$ signifie l'adresse actuelle, msg indique l'endroit en mémoire ou se situe le début de notre string
				;;l'un moins l'autre donne la longueur du string 


section .text ;;on place le code dans cette section
global _start ;;le _start servira au linker à savoir ou commencer à executer le code
_start: ;;équivalent du main en C


	;;pour écrire notre message on fait appel àu syscall sys_write (4 en linux x86)
	mov eax, 4	;;on affecte à eax la valeur du syscall à réaliser, ici 4
	mov ebx, 1	;;l'endoit ou l'on souhaite écrire (1==STDOUT==la sortie standard)
	mov ecx, msg	;;l'adresse du début de notre chaine de charactère en mémoire
	mov edx, len	;;la taille du message à afficher
	int 80h		;;pour que le CPU prennent en comtpte la valeur actuel des registres et agisse en circonstance
	





	;; pour éviter de faire un segfault on doit appeler le syscall sys_exit (1 en linux x86) avant de quitter le programme
	
	mov eax, 1 	;;on affecte la valeur 1 au registre eax
			;;60 représente "l'identifiant" du syscall sys_exit 

        mov ebx, 0	;;on stocke dans ebx la valeur de retour du programme (0 signifie que tout s'est bien passé)
	int 80h		;;signifie qu'on demande au CPU de prendre en compte la valeur actuelle des registres et d'agir en circonstance
