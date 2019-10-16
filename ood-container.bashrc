# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# add dev enabling entries to bashrc
src_if_exists(){
   if [ -f $1 ]; then
      . $1
   fi
}

src_if_exists "/opt/rh/rh-ruby24/enable"
src_if_exists "/opt/rh/rh-ror50/enable"
src_if_exists "/opt/rh/rh-nodejs10/enable"
src_if_exists "/opt/rh/rh-nodejs6/enable"

export PATH=$HOME/bin:$PATH
export USER=$(whoami)

alias init='gem install rake -v 12.0.0 && gem install bundler -v 1.13.7'
alias vim='vi'
alias enhance='sudo yum install -y epel-release && sudo yum install -y pandoc'
alias plz='sudo'
alias please='sudo'
alias logs="sudo tail -f  /var/log/ondemand-nginx/$USER/access.log /var/log/ondemand-nginx/$USER/error.log"
alias err="sudo cat /var/log/ondemand-nginx/ood/error.log | less"

export LANG=en_US.UTF-8

export SHELL='/bin/sh'
