# One Shell Scripts for some tasks on Ubuntu #

## My Env ##

- HP laptop
- Ubuntu16.04 x86_64
- NVIDIA GTX 1050 && Intel Kabylake GT2
- Intel Core i5-7300HQ

When we start to learn or work on Ubuntu or other linux os at first time, we are always turn around and turn around on config the working environment,
and this repository is help you for reducing the time on configuration. This repository contains shell scripts for some tasks,
and I run successfully in my env.You may successfully run in you computer by just directly download the repositoryand run.
If not, you can seach on google or submit a new issue, we can handle it and imporve together(__bother Chinese and English is ok__).

## Usage ##

    git clone https://github.com/Christophe1997/shell_scripts.git
    cd shell_scripts
    # chmod u+x $scripts_file
    # ./$scripts_files
I recommend you always check the shell scripts line by line to avoid
`sudo rm -rf ~/` for security. put the scripts you need in daily work under the
path `$HOME/bin`.

## Task list ##

- Install opencv-3.3

    Build and install opencv-3.0 without contrib.[Details][1] in the one\_scripts\_opencv.sh.

- Update all Python packages

    Update all avaliable Python packages by pip.[Details][2] in the one\_scripts\_pipUpgradeAll.sh.

- Make Ubuntu more suitable for work __after you install the OS__.[Details][3] in the one\_scripts\_ubuntu.

  - remove app uncommonly used
  - install Flatabulous theme and Flat-Remix icons
  - change bash to zsh
  - some suggestions

[1]: https://github.com/Christophe1997/shell_scripts/blob/master/one_scripts_opencv.sh
[2]: https://github.com/Christophe1997/shell_scripts/blob/master/one_scripts_pipUpgradeAll.sh
[3]: https://github.com/Christophe1997/shell_scripts/blob/master/one_scripts_ubuntu.sh
