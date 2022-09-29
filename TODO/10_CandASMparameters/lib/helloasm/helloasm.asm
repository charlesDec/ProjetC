section .data ;;on y range les constantes
	
msg: db 'C' 			;;définition un charactère




section .text ;;on place le code dans cette section
global printChar ;;nom de la methode
printChar:


	;;pour écrire notre message on fait appel àu syscall sys_write (1 en linux 64bit)
	mov rax, 1	;;on affecte à rax la valeur du syscall à réaliser, ici 1
	mov rdi, 1	;;l'endoit ou l'on souhaite écrire (1==STDOUT==la sortie standard)
	mov rsi, msg	;;l'adresse du début de notre chaine de charactère en mémoire
	mov rdx, 1	;;la taille du message à afficher
	syscall		;;pour que le CPU prennent en comtpte la valeur actuel des registres et agisse en circonstance
	


	ret ;;retourne le controle


	
