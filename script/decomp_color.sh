
bw="zig-zag.jpg thumbs.jpg"

mkdir -p out

for img in $bw; do
    echo $img
    #extension="${img##*.}"
    filename="${img%.*}"
    ./jpeg2ppm -o out/$filename.ppm images/$img
done
