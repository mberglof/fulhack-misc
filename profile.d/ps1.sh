[ $UID -eq 0 ] && COLOR=31 || COLOR=32
export PS1="[\e[1;${COLOR}m\u\e[0m@\e[1;37m\h\e[0;33m :\w $\e[0m] \n\#> "
