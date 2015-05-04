PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/opt/go/libexec/bin

code () {
    if [[ $# = 0 ]]
    then
        echo "foo"
        open -a "Visual Studio Code"
    elif [ -f $1 ]
    then
        echo "bar"         
#        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args $1
    fi
}
