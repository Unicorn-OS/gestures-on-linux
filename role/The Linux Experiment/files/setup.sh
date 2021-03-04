sudo gpasswd -a $USER input

pre(){
sudo apt -y install wmctrl python3 python3-setuptools xdotool python3-gi libinput-tools python-gobject
}

get(){
  src=~/.uni/src
  mkdir -p $src
  cd $src
  git clone https://github.com/bulletmark/libinput-gestures.git
}

build(){
cd $src/libinput-gesture
sudo make install
}

setup(){
  libinput-gestures-setup autostart
  libinput-gestures-setup start
}

gui(){
cd $src
git clone https://gitlab.com/cunidev/gestures.git
cd gestures
sudo python3 setup.py install
}

pre
get
build
setup
gui

#https://youtu.be/ArBCfhVsTZw
