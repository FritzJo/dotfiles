..() {
    if [ -z "$1" ]; then
        cd ..
    else
        cd `awk "BEGIN {while (c++<$1) printf \"../\"}"`
    fi
}

ccd() {
    mkdir -p "$1"
    cd "$1"
}

pd() {
    while IFS= read -r line; do
        n=$(pacman -Qi "$line" | grep Depends | cut -d: -f2 | wc -w)
        echo "$line $n"
    done < <( pacman -Qe | cut -d' ' -f1 )
}
