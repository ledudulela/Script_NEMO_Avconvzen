# AVCONVZEN & NEMO
Objet: Lanceur du script avconvzen depuis le gestionnaire de fichiers Nemo

Dépendances: zenity; avconv; avconvzen

![screenshot](https://github.com/ledudulela/Script_CAJA_Avconvzen/blob/master/avconvzenfm.jpg)

--

Le script avconvzenfm.sh est à placer de préférence dans le répertoire /usr/local/bin/

Il peut être appelé depuis le gestionnaire de fichiers.

Par exemple pour Nemo, en créant un lien symbolique vers /usr/local/bin/avconvzenfm.sh

dans le répertoire /home/utilisateur/.local/share/nemo/scripts

et en nommant ce lien symbolique "Convertit la vidéo en...", il apparaitra en faisant un
 clic-droit sur une vidéo dans Nemo, un sous-menu Scripts > Convertit la vidéo en...

*ln -s "/usr/local/bin/avconvzenfm.sh" "$HOME/.local/share/nemo/scripts/Convertit la vidéo en..."*

--

idem avec le script avconvzenfm_x11 pour transformer directement des fichiers ts en mp4 

*ln -s "/usr/local/bin/avconvzenfm_x11.sh" "$HOME/.local/share/nemo/scripts/Transformer la vidéo TS en MP4"*

--

Pour avconvzen, ouvrez en tant qu'administrateur le répertoire /usr/local/bin

Collez y le fichier 'avconvzen' et rendez le exécutable ( retirer le .sh s'il existe ou créer un lien symbolique sans .sh )

Le script avconvzen peut ainsi être appelé facilement en ligne de commande.

exemple$: 

avconvzen chemin_fichier

avconvzen -o3 chemin_fichier (avec argument -o pour sélectionner par défaut la troisième option de la liste.)

le script avconvzen est téléchargeable sur github: 
https://github.com/ledudulela/Script_SYS_Avconvzen


