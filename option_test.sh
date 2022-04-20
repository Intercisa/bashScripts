#!/bin/bash

#https://linuxconfig.org/bash-script-flags-usage-with-arguments-examples

while getopts 'lha:' OPTION; do
	case "$OPTION" in
		l)
			echo "option l"
			;;
		h)
			echo "option h"
			;;
		a)
			avalue="$OPTARG"
			echo "the value provided is $OPTARG"
			;;
		?)
			echo "script usage: $(basename "$0") [-l] [-h] [-a somevalue]" >&2
			exit 1
			;;
	esac
done
shift "$(($OPTIND -1))"
