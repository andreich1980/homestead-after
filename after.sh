# Clone or update homestead-after
echo 'Updating homestead-after...'
if [ ! -d /home/vagrant/.homestead-after ]; then
  git clone git://github.com/andreich1980/homestead-after /home/vagrant/.homestead-after
else
  cd /home/vagrant/.homestead-after
  git pull
fi

# Replace .bashrc
echo 'Updating .bashrc...'
cp /home/vagrant/.homestead-after/.bashrc /home/vagrant/.bashrc
. /home/vagrant/.bashrc

# Git config
echo 'Updating .gitconfig...'
cp /home/vagrant/.homestead-after/.gitconfig /home/vagrant/.gitconfig
git config --global user.name "Andrew P"
git config --global user.email "andreich1980@gmail.com"

# Grub fail timeout
echo 'Updating grub fail timeout...'
sudo cp -f /home/vagrant/.homestead-after/grub-default /etc/default/grub
sudo update-grub
