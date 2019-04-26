sudo su -

# Clone or update homestead-after
if [ ! -d /home/vagrant/.homestead-after ]; then
  git clone git://github.com/andreich1980/homestead-after /home/vagrant/.homestead-after
else
  cd /home/vagrant/.homestead-after
  git pull
fi

# Replace .bashrc
cp /home/vagrant/.homestead-after/.bashrc /home/vagrant/.bashrc
source /home/vagrant/.bashrc

# Git config
cp /home/vagrant/.homestead-after/.gitconfig /home/vagrant/.gitconfig
git config --global user.name "Andrew P"
git config --global user.email "spargo32@gmail.com"

# Grub fail timeout
cp -f /home/vagrant/.homestead-after/grub-default /etc/default/grub
update-grub
