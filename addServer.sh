 
echo '''
if [ $numero -eq   ' "$(echo $cont)"'  ];
then
        gnome-terminal -- sshpass -p ' "$(echo $senha)"'  ssh -o StrictHostKeyChecking=no '"$(echo $user)"'@'"$(echo $Ip)"'; 
fi
''' >> sshShell.sh;

 