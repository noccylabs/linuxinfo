NAME="Sprunge.us"
function publish() {
    cat $1 | curl -F 'sprunge=<-' http://sprunge.us
}
