
bw="horizontal.jpg vertical.jpg shaun_the_sheep.jpeg biiiiiig.jpg"

mkdir -p out

for img in $bw; do
    echo $img
    #extension="${img##*.}"
    filename="${img%.*}"
    ./jpeg2ppm -o out/$filename.ppm images/$img
done
