
bw="invader.jpeg poupoupidou_bw.jpg gris.jpg bisou.jpeg complexite.jpeg"

for img in $bw; do
    #extension="${img##*.}"
    filename="${img%.*}"
    d=$(diff out/$filename.pgm valid_out/$filename.pgm)
    if [ "$d" != "" ]; then
	echo "Erreur avec $img"
	exit 1
    fi
done
