echo '''
cont()
{
    cont='"$(echo $cont)"';
    cont=$(( '"$(echo $cont)"' + 1 ));
}
''' > cont.sh