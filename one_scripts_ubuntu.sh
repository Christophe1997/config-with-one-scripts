# update the system
sudo apt update
sudo apt upgrade
# remove amazon link
sudo apt-get remove unity-webapps-common

# remove app uncommonly used
sudo apt-get remove totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot onboard deja-dup
sudo apt-get remove gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install

# install Flatabulous theme
# install unity-tweak-tool
sudo apt-get install unity-tweak-tool
sudo add-apt-repository -y ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme
# for icon, I recommend the Flat-Remix
sudo add-apt-repository -y ppa:noobslab/icons
sudo apt-get update
sudo apt-get install flat-remix-icons
# now you can find the theme and icon in unity-tweak-tool

# chang bash to zsh
# if you just want use bash, you can comment the block below
# install git, zsh, vim
sudo apt-get install zsh
sudo apt-get install git
sudo apt-get install vim
chsh -s $(which zsh)
$iszsh=`echo $SHELL`
$version=`zsh --version`
if [ "$iszsh" = '/usr/bin/zsh' -o "$iszsh" = '/bin/zsh' ]
    echo "change to zsh ${version} successfully."
    unset $iszsh
    unset $version
else
    echo "change to zsh failed."
fi
# install Oh-My-Zsh via wget
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# then you can set enerything you want in ~/.zshrc, details on https://github.com/robbyrussell/oh-my-zsh
# but I really recommend the theme ys

# for the font, ubuntu or something others is ok, but I still want to recommend the source-code-pro,
# you can get from https://github.com/adobe-fonts/source-code-pro

# maybe you want a beautiful vim, I recommend the guide on https://github.com/yangyangwithgnu/use_vim_as_ide
# just follow it ten minutes, you can change the origin vim totally.

# enjoy it!
