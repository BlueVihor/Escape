#!/bin/bash

chosen=$(echo -e "WiFi\nBluetooth\nSound" | rofi -dmenu -p "Control Center" -theme-str '
window {
  transparency: "real";
  background-color: rgba(30, 30, 30, 0.6);
  blur: true;
  location: north;
  anchor: north;
  y-offset: 35px;
  width: 300px;
}
')

case "$chosen" in
  WiFi) kitty -e nmtui ;;
  Bluetooth) kitty -e bluetoothctl ;;
  Sound) pavucontrol ;;
esac

