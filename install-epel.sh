#!/bin/bash

[ $UID -ne 0 ] && eval 'echo "You need root to install the epel rpm" ; exit 1' || echo "w00t"
[ -e /etc/redhat-release ] && VERSION=$(egrep -o "[[:digit:]]" /etc/redhat-release) || exit 1
#[ -e /etc/redhat-release ] && VERSION=$(egrep -o "[[:digit:]]" /etc/redhat-release)

MAJOR=$(echo $VERSION | awk '{print $1}')

case $MAJOR in
	6)
		URL=http://mirrors.coreix.net/fedora-epel/6/i386/epel-release-6-7.noarch.rpm
	;;
	5)
		URL=http://mirror01.th.ifl.net/epel/5/i386/epel-release-5-4.noarch.rpm
	;;
	*)
		echo "Are you running a old RHEL?"
		exit 2
	;;
esac

rpm -Uvh $URL
