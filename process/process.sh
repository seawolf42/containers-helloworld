#!/bin/sh

echo "starting long-running process"

function trap_ctrlc ()
{
    echo "stopping long-running process"
    exit 0
}

trap "trap_ctrlc" 2

let i=0
while true; do
    let i++
    echo "hello world ${i}"
    sleep 1
done
