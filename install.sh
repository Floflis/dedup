#!/bin/sh

if [ ! -e /1 ]
   then
      echo "[i] Dedup works better when using Floflis Platform. Installing basic tree folder for duplicates..."
      sudo mkdir /1
      echo "- Setting permissions on /1 (tree) folder..."
      sudo chmod -R a+rwX /1
      echo "Creating /libraries..."
      sudo mkdir /1/libraries
      echo "Creating /libraries/replic..."
      sudo mkdir /1/libraries/replic
      echo "- Setting permissions on /libraries/replic..."
      sudo chmod -R a+rwX /1/libraries/replic/
      echo "- Creating root folder inside tree..."
      sudo ln -s / /1/Z-root
      echo "[✓] Basic tree folder now is installed."
   else
      echo "[✓] You have a Floflis Platform system.  Continuing the install..."
fi

echo "Installing Dedup..."
sudo cp -f dedup /usr/bin && sudo chmod +x /usr/bin/dedup
echo "Done! Run 'dedup' command to use it."
