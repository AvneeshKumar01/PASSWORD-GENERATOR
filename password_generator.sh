# !/bin/bash

if [ "$(which openssl)" != "" ]; then
    echo ".....password generator....."

    echo "Please select how many passwords you want: "
    read PASS_QTY

    echo "Select the length of the password (1-64): "
    read PASS_LENGTH

    echo
    echo "...Generating passwords..."
    echo

    for p in $(seq 1 $PASS_QTY); do
        echo "Password $p: " $(openssl rand -base64 48 | cut -c1-$PASS_LENGTH)
    done

else echo "openssl not found"
    echo "Do you want to install openssl"
    echo "[y/n]"
    read choose

    if [ "$choose" = "y" ]; then
        echo "choose your os "
        echo "1. windows"
        echo "2. Linux"
        echo "3. Macos"

        read choice
        if [ "$choice" = 1 ]; then
            echo "run: choco install openssl"
            echo "Chocolatey : https://chocolatey.org/"
        elif [ "$choice" = 2 ]; then
            echo "run: sudo apt install openssl -y"
        elif [ "$choice" = 3 ]; then
            echo "run: brew install openssl"
        else 
            echo invalid option
            exit 1
        fi

    elif [ "$choose" = "n" ] ; then
        exit 1
    fi
fi

