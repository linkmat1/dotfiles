_Ce repo est pour facilitée mon installation de mon 
setup personel de mon ordinateur de secours_

**A propos**

Ce dépôt est une bouée de sauvetage en cas de formatage et me permet de noter les choses à savoir concernant mon installation de Linux.

![alt text](https://github.com/linkmat1/dotfiles/blob/master/images/Capture%20d%E2%80%99%C3%A9cran_2017-10-29_23-26-51.png)

La liste des paquets installés sur ma machine sont disponibles dans le fichier package.list. Les paquets AUR sont en fin de liste
```
cat package.list | xargs yaourt -S --needed --noconfirm
```

**Faire l'installation automatique des packages de base**
```
make install
```

**Faire l'installation automatique des packages de developement**
```
make installdev
```

**Trouver le process qui utilise un port**
```
sudo netstat -nlp | grep :80
```

**Quand le son se met à foirer**
```
pulseaudio -k && sudo alsa force-reload
```


