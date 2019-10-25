source $(dirname "$0")/cont.sh;
exec()
{ 
    echo "";
    read -p 'Escolha um numero: ' numero;
 
    # Instala dependencias
    if [ $numero -eq 0 ];
    then
            apt install sshpass
    fi

    # Adiciona servidor 
    if [ $numero -eq 1 ];
    then

        cont;
        read -p 'Usuario do Servidor: ' user;
        read -p 'Ip do Servidor: ' Ip;
        read -s -p 'Senha do Servidor: ' senha;
        echo "";
        read -p 'Nome do Servidor: ' nome;

        gnome-terminal -- sshpass -p $senha ssh -o StrictHostKeyChecking=no $user@$Ip; 

        numero="$numero"

    # IPORTA ADD SERVER
    source $(dirname "$0")/addServer.sh;
    source $(dirname "$0")/addBanner.sh;
    source $(dirname "$0")/addCont.sh;
     

    fi


    source $(dirname "$0")/sshShell.sh;
}



