#Lignes de code à lancer depuis le terminal au début du démarrage d'une nouvelle session onyxia
git config --global user.name "amontaut"
git config --global user.email alexis.montaut@insee.fr
git config --global credential.helper store
git config --global pull.rebase false #pour gérer les conflits entre fichiers sans faire de rebase

#pour vérifier la config définie plus haut.
git config --global --list

#pour utiliser winmerge, qui permet de gérer les conflits de fichiers
#git config --global merge.tool winmerge
#git config --global mergetool.prompt false
#git config --global mergetool.winmerge.trustExitCode true
#git config --global mergetool.winmerge.cmd "\"C:\\Program Files
(x86)\\WinMerge\\WinMergeU.exe\" -u -e -dl Local -dr Remote \"\$LOCAL\" \"\$REMOTE\"
\"\$MERGED\""

#pour giter depuis le terminal :
git add . # on coche tout les fichiers
git commit -m "message de commit" # on fait un commit
git pull # on récupere les modifications distantes
git push # on envoie les modifications sur le repository
git checkout -b autre_branche # on construit une branche
git check out hashducommit #pour revenenir plus haut dans le projet
git checkout branche #pour se positionner sur une branche (main par exemple avant de faire un merge)
git merge nouvellebranche #pour rappatrier le contenu de nouvelle branche vers la branche dans laquelle on est, main par exemple

#pour mettre les fichiers dans la remise
git stash # envoie le contenue des modifications non suivies dans la remise
git stash apply # renvoie la remise vers le working directory
