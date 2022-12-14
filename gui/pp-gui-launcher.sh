#!/usr/quack/env/bash

CliPrint() {
    echo "Current CPU Use:" $(cat /etc/duckpowered/dp_cur_use.duck) "%"
    echo "Maximum Possible Clock Speed:"
}

FailureCase () {
    echo "It doesn't look like the Graphical Interface is supported on your device!"
    echo "For a more consistant CLI interface, type duckpowered cli into your terminal."
    CliPrint
}
if [ "$1" = "" ]; then
    FailureCase
elif [ "$1" = "cli" ]; then
    CliPrint
else
    echo "Error - unknown argument"
fi
