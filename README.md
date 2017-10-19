# Shell Scripts for Some tasks #

## My Env ##

- HP laptop
- Ubuntu16.04 x86_64
- NVIDIA GTX 1050 && Intel Kabylake GT2
- Intel Core i5-7300HQ

This repository contains shell scripts for some tasks, and I run successful in my env.
You may successfully run in you computer by just directly download the repository and
run.If not, you can seach on google or submit a new issue, we can handle it and imporve
together(__bother Chinese and English is ok__).

## Usage ##

    git clone https://github.com/Christophe1997/shell_scripts.git
    cd shell_scripts
    # chmod u+x $scripts_file
    # ./$scripts_files
I recommend you always check the shell scripts line by line to avoid
`sudo rm -rf ~/` for security. put the to `$HOME/bin` if you need in daily work.

## Task list ##

- Install opencv-3.3
    Build and install opencv-3.0 without contrib.[Details][1] in the install_opencv.sh.

- Update all Python packages
    Update all avaliable Python packages by pip.[Details][2] in the pip\_upgrade\_all.sh.

[1]: https://github.com/Christophe1997/shell_scripts/blob/master/install_opencv.sh
[2]: https://github.com/Christophe1997/shell_scripts/blob/master/pip_upgrade_all.sh
