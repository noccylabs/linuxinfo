NAME="ix.io"

function publish() {
    cat $1 | curl -n -F 'f:1=<-' http://ix.io
}

