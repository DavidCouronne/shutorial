#! /bin/sh

# THIS SCRIPT WAS GENERATED, DO NOT EDIT
# Real source: viewing-1-setup.sharin
if which uuencode >/dev/null 2>/dev/null ; then :; else (apt update;apt install sharutils) 2>/dev/null >/dev/null; fi
if which tree >/dev/null 2>/dev/null ; then :; else (apt update;apt install tree) 2>/dev/null >/dev/null; fi

sed -i -e "s/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/" /etc/locale.gen
dpkg-reconfigure --frontend=noninteractive locales
update-locale LANG=fr_FR.UTF-8
export LANG=fr_FR.UTF-8

cat << EOF > fichier
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
Ceci est le contenu du fichier dont le nom est "fichier". Il est un peu répétitif.
EOF

cat fichier | gzip - > fichier-binaire

echo poufpouf badaboum > mot-de-passe

for i in `seq 1 30` ; do 
cat >> fichier_long << EOF
Ce fichier est plus long, mais pas plus intéressant.
Ce fichier est plus long, mais pas plus intéressant.
Ce fichier est même longuet à force.
Ce fichier est plus long, mais pas plus intéressant.
Ce fichier est plus long, mais pas plus intéressant.
Ce fichier est plus long, mais pas plus intéressant.
Et ça continue, ce fichier est ennuyant comme la pluie la nuit.
Ce fichier est plus long, mais pas plus intéressant.
Ce fichier est plus long, mais pas plus intéressant.
Ce fichier est plus long, mais pas plus intéressant.
Ce fichier est plus long, mais pas plus intéressant.
Ne trouvez pas ça pénible à force, toutes ces lignes qui se ressemblent ?
Ce fichier est plus long, mais pas plus intéressant.
Ce fichier est plus long, mais pas plus intéressant.
Ce fichier est plus long, mais pas plus intéressant.
En fait, ce fichier semble tout simplement interminable.
Ce fichier est plus long, mais pas plus intéressant.
Ce fichier est plus long, mais pas plus intéressant.
EOF
done

for i in `seq 1 500` ; do 
  echo "Pas intéressant." | iconv -f ISO_8859-1 -t utf8 >> cache-cache-passe
done
echo "L'info cachée est : Bop bop BOUM" >> cache-cache-passe


for f in fichier fichier_long cache-cache-passe ; do 
  iconv -f ISO_8859-1 -t utf8 $f /tmp/AZE && mv /tmp/AZE $f
done

echo done > /tmp/.katacoda-finished