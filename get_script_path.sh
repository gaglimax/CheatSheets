get_script_path()
{
  # Retour le chemin absolu du répertoire contenant le script
  SOURCE=${BASH_SOURCE[0]}
  while [ -h $SOURCE ]; do # On cherche à résoudre $SOURCE jusqu'à que cette variable ne soit pas un lien symbolique
   DIR=$( cd -P $( dirname $SOURCE ) && pwd )
   SOURCE=$(readlink $SOURCE)
   [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE # if $SOURCE était un lien symbolique relatif, nous devons le modifier pour obtenir un chemin absolu
  done
  DIR=$( cd -P $( dirname $SOURCE ) && pwd )
  return $DIR
}
