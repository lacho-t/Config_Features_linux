# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# THEMES TO PROMPT_COMMAND
#lacho_t@Tue Feb 23>5.0bash>
#PS1="\u@\d>\v\s> "
#Tue Feb 23 lacho_t@ciber.lcht>19:53:38>
#PS1="\d \u@\H>\t> "
#lacho_t@Tue Feb 23>19:54>
#PS1="\u@\d>\A> "
#hidden data
#PS1="\W > "
#hidden data
#PS1="\W\$"
#with root o user # $ lacho_t@ciber.lcht ~:$
#PS1="\u@\H \W:\$ "
#Tue Feb 23@ciber~$
#PS1="\[\d@\h\W\]\$ "
#[lacho_t@ciber.lcht ~]$
#PS1="\e[0;36m[\u@\H \W]\$ \e[0m"
#https://linuxhint.com/linux_terminal_customization_guide_beginners/
#[lacho_t@ciber.lcht ~]$ bold
#PS1="\e[1;36m[\u@\H\e[0m \e[2;36m\W\e[0m\e[1;36m]\$ \e[0m"
#[lacho_t@ciber.lcht ~]$
#PS1="\e[0;36m[\u@\h\e[0m \e[2;36m\e[0m\e[0;36m\W]\$ \e[0m"
# view https://github.com/ohmybash/oh-my-bash
#[lacho_t@ciber.lcht ~]$
#S1="\e[0;36m\u\e[0m \e[0;36m\e[0m\e[0;36m\W\$ \e[0m"
#[lacho_t@ciber.lcht ~]$
#PS1="\e[0;36m\u\e[0m \e[0;36m\e[0m\e[0;36m\W\$ \e[0m"

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi
