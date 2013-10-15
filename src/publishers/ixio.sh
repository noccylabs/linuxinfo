AUTHOR="Bryan Bennett <bbenne10@gmail.com>"
DESCR="Uploads file to ix.io"
NAME="ix.io"

function publish() {
    cat $1 | curl -n -F 'f:1=<-' http://ix.io
}

