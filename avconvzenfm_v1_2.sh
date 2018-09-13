#!/bin/bash
# auteur : ledudulela
# version: 1.2
# màj : 2018-09-01 15:40
# Objet: Lanceur du script avconvzen depuis le gestionnaire de fichier (Caja)
# Prérequis: zenity; avconv; avconvzen
# Pour avconvzen, ouvrez en tant qu'administrateur le répertoire /usr/local/bin
# Collez y le fichier 'avconvzen' et rendez le exécutable
# Le script peut ainsi être appelé facilement en ligne de commande.
# exemple$: 
# avconvzen chemin_fichier
# avconvzen -o3 chemin_fichier (avec argument -o pour sélectionner par défaut la troisième option de la liste.)

defaultOption=3 # option par défaut
# fichier dans lequel est stocké la valeur de la dernière option choisie
# cela permettra, lors d'une sélection multiple, de ne demander le choix de l'option qu'une seule fois
fileLastOption="/tmp/avconvzenfm.tmp" # $HOME/.local/share/applications/avconvzenfm.dat
export fileLastOption

if [ -f "$fileLastOption" ]; then # teste si le fichier temporaire existe déjà 
	rm "$fileLastOption" # supprime le fichier
fi

OLD_IFS="$IFS"
IFS='
'
arrFilePaths=( $NEMO_SCRIPT_SELECTED_FILE_PATHS )
IFS="$OLD_IFS"
for selectedFilePath in "${arrFilePaths[@]}"
do
	if [ -f "$fileLastOption" ]; then # teste si le fichier existe
		defaultOption=`cat $fileLastOption` # récupère la dernière option choisie dont la valeur a été stockée dans le fichier
		if [ $lastOption == 0 ]; then # l'option = 0 quand l'utilisateur a cliqué sur le bouton [Annuler]
			exit 0
		else
			bash avconvzen -x"$defaultOption" "$selectedFilePath"
		fi
	else
		bash avconvzen -o"$defaultOption" "$selectedFilePath" # le fichier $fileLastOption est aussi créé
	fi
done
if [ $? == 0 ]
then
	zenity --info --title="Conversion" --text="Conversion terminée" --timeout=10
fi
exit
