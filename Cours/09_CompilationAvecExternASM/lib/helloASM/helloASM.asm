
section .data ;;on y range les constantes
	
msg: db "HelloFromASM", 10, 13 	;; on délare un ensemble d'octet avec db
				;;la valeur 10 signifie retour a la ligne en ASCII, 13 signifie retour chariot (retour a gauche de l'ecran)
len: equ ($ - msg)		;;$ signifie l'adresse actuelle, msg indique l'endroit en mémoire ou se situe le début de notre string
				;;l'un moins l'autre donne la longueur du string 


section .text ;;on place le code dans cette section
global helloFromASM 
helloFromASM: ;;notre fonction helloFromASM commence ici


	;;pour écrire notre message on fait appel àu syscall sys_write (1 en linux x64)
	mov rax, 1	;;on affecte à rax la valeur du syscall à réaliser, ici 1
	mov rdi, 1	;;l'endoit ou l'on souhaite écrire (1==STDOUT==la sortie standard)
	mov rsi, msg	;;l'adresse du début de notre chaine de charactère en mémoire
	mov rdx, len	;;la taille du message à afficher
	syscall		;;pour que le CPU prennent en comtpte la valeur actuel des registres et agisse en circonstance
	
	ret	;;on retourne le controle
