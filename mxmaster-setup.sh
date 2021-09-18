package=logiops

if pacman -Qs $package > /dev/null; then
    echo "Package '$package' is installed, OK";
else
    echo "Package '$package' is not installed, attempting install from AUR...";
    yay -S --noconfirm $package;
fi

if [ -f ./logid.cfg ]; then
    echo "Configuration file found, setting up..."
    sudo cp logid.cfg /etc/logid.cfg;
    sudo systemctl enable logid.service;
    sudo systemctl restart logid.service;
else
    echo "Cannot find 'logid.cfg' in the current working directory"
    return 2;
fi

