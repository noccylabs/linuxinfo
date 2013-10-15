NAME="Save to ~/linuxinfo.txt"
function publish() {
    mv $1 $HOME/linuxinfo.txt
    echo "~/linuxinfo.txt"
}
