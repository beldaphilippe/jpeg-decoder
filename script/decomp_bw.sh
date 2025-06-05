
bw="invader.jpeg poupoupidou_bw.jpg gris.jpg bisou.jpeg complexite.jpeg"

mkdir -p out

for img in $bw; do
    echo $img
    #extension="${img##*.}"
    filename="${img%.*}"
    ./jpeg2ppm -o out/$filename.pgm images/$img
done
