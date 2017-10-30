

La liste des paquets installés sur ma machine sont disponibles dans le fichier package.list. Les paquets AUR sont en fin de liste

```
pacman -Qqe | grep -vx "$(pacman -Qqm)" > /path/to/chosen/directory/pkg.list
```

Dans le cas d'une défaillance critique nécessitant une réinstallation complete, ces paquets peuvent être réinstallés rapidement en utilisant la commande :

```
xargs -a /path/to/chosen/directory/pkg.list pacman -S --needed
```

Note : Cette liste ne prend en compte que les paquets issus des dépôts officiels. La liste des paquets issus de AUR peut-être obtenue par:

```
pacman -Qqme > /path/to/chosen/directory/aur.list
```
Elle devra être restaurée indépendamment (par un assistant AUR si vous en utilisez un). 

**Sauvegardez régulièrement la base de données Pacman**
```
tar -cjf /chemin/vers/où/sauver/pacman-database.tar.bz2 /var/lib/pacman/local
```
Sauvegardez régulièrement les répertoires /etc, /home, /srv, et /var


Sauvegardez régulièrement les répertoires /etc, /home, /srv, et /var

Puisque les répertoires /etc, /home, /srv, et /var contiennent d'importants fichiers systèmes et de configuration, il est conseillé de garder des sauvegardes de ces répertoires faites à intervalle régulier. La suite est composée de lignes directrices à ce propos, compte tenu qu'il existe de nombreux moyens pour effectuer ce type de sauvegarde.

/etc: Sauvegardez les fichiers de configuration de votre système en exécutant la commande suivante en root ou via une tâche cron :

```
tar -cjf /chemin/vers/où/sauver/etc-backup.tar.bz2 /etc
```