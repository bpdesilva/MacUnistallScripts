#!/bin/bash
# Source : https://support.apple.com/en-us/HT201372

PS3='Please enter your choice: '
MacOS=("MacOS Catalina" "MacOS Mojave" "MacOS HighSierra" "MacOS Sierra" "Quit")
select macos in "${MacOS[@]}"
do
    case $macos in
        "MacOS Catalina")
            echo "you chose choice Catalina"
            sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/Catalina --nointeraction
            ;;
        "MacOS Mojave")
            echo "you chose choice Mojave"
            sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/Catalina --nointeraction
            ;;
        "MacOS HighSierra")
            echo "you chose choice HighSierra"
            sudo /Applications/Install\ macOS\ HighSierra.app/Contents/Resources/createinstallmedia --volume /Volumes/Catalina --nointeraction
            ;;
        "MacOS Sierra")
            echo "you chose choice Sierra"
            sudo /Applications/Install\ macOS\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/Catalina --nointeraction
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done