_Ce repo est pour facilitée mon installation de mon 
setup personel de mon ordinateur de secours_

**A propos**

Ce dépôt est une bouée de sauvetage en cas de formatage et me permet de noter les choses à savoir concernant mon installation de Linux.

![alt text]()

La liste des paquets installés sur ma machine sont disponibles dans le fichier package.list. Les paquets AUR sont en fin de liste
```
cat package.list | xargs yaourt -S --needed --noconfirm
```

**Trouver le process qui utilise un port**
```
sudo netstat -nlp | grep :80
```

**Quand le son se met à foirer**
```
pulseaudio -k && sudo alsa force-reload
```

