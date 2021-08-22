emojidl() {
curl -kLss "https://emojipedia.org/search/?q=$1" | grep "on Apple" | grep " 2x" | sed -n 's/.*<img src="\([^"]*\)".*/\1/p' | xargs wget
}
