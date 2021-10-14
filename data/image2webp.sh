!#/bin/sh
find ./ -type f -name '*.png' -exec sh -c 'cwebp -q 85 $1 -o "${1%.png}.webp"' _ {} \;
find ./ -type f -name '*.jpg' -exec sh -c 'cwebp -q 85 $1 -o "${1%.png}.webp"' _ {} \;
