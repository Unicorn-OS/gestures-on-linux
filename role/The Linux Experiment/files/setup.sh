sudo gpasswd -a $USER input
sudo apt -y \
install wmctrl python3 python3-setuptools xdotool python3-gi libinput-tools python-gobject

get(){
  src=~/.uni/src
  mkdir -p $src
  cd $src
  git clone https://github.com/bulletmark/libinput-gestures.git
}
get

makeit(){
cd $src/libinput-gesture
sudo make install
}
makeit

libinput-gestures-setup autostart
libinput-gestures-setup start

#https://youtu.be/ArBCfhVsTZw
