AUTHOR="Bryan Bennett <bbenne10@gmail.com>"
DESCR="Uploads file to sprunge.us"
NAME="Sprunge.us"

function publish() {
    cat $1 | curl -F 'sprunge=<-' http://sprunge.us
}
