#!/bin/bash

#*****************************************************************************#
#                                                                             #
#                                  sample.sh                                  #
#                               Anthony Cabrera                               #
#                                Jan 18, 2017                                 #
#                                                                             #
#*****************************************************************************#

usage()
{
	echo incorrect, dummy.
	exit 1;
}

TITLESPACE="*\t\t\t\t\t\t\t\t       *"
echo -e "\n\n"
echo "************************************************************************"
echo -e "$TITLESPACE\n$TITLESPACE"
echo -e "*\t  Stream Based Supercomputing Lab @ Washington University      *"
echo -e "$TITLESPACE\n$TITLESPACE"
echo "************************************************************************"
echo -e "\n\n"

echo "Number of arguments (n-1): $#"
if [ $# != 6 ]; then
	usage
fi

#example of argument parsing using getopts
while getopts "n:k:t:" opt; do
  case $opt in
    n)
      echo "Number of runs: $OPTARG" #>&2
			numInputFiles=$OPTARG
			echo "numInputFiles=$OPTARG"
      echo "[debug]: OPTIND=$OPTIND"
      ;;
		k)
			echo "k-value: $OPTARG" #>&2
			echo "[debug]: OPTIND=$OPTIND"
			;;
		t)
			echo "today: $OPTARG" #>&2
			echo "[debug]: OPTIND=$OPTIND"
			;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      usage
      ;;
  esac
done
