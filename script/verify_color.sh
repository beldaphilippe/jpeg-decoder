
bw="zig-zag.jpg thumbs.jpg"

for img in $bw; do
    #extension="${img##*.}"
    filename="${img%.*}"
    d=$(diff out/$filename.ppm valid_out/$filename.ppm)
    if [ "$d" != "" ]; then
	echo "Erreur avec $img"
	exit 1
    fi
done
