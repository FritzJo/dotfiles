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

