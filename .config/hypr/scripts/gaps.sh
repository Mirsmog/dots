#!/usr/bin/env bash

gaps_in=$(hyprctl getoption general:gaps_in | grep 'custom type' | awk '{print $3}')
gaps_out=$(hyprctl getoption general:gaps_out | grep 'custom type' | awk '{print $3}')

echo gaps_out

function inc_gaps_in() {
	hyprctl keyword general:gaps_in $((gaps_in + 5))
}

function dec_gaps_in() {
	if [ "$gaps_in" -gt 0 ]; then
		hyprctl keyword general:gaps_in $((gaps_in - 5))
	fi
}

function inc_gaps_out() {
	hyprctl keyword general:gaps_out $((gaps_out + 5))
}

function dec_gaps_out() {
	if [ "$gaps_out" -gt 0 ]; then
		hyprctl keyword general:gaps_out $((gaps_out - 5))
	fi
}

while [[ $# -gt 0 ]]; do
	case $1 in
	--inc_gaps_in)
		inc_gaps_in
		shift
		;;
	--dec_gaps_in)
		dec_gaps_in
		shift
		;;
	--inc_gaps_out)
		inc_gaps_out
		shift
		;;
	--dec_gaps_out)
		dec_gaps_out
		shift
		;;
	*)
		printf "Error: Unknown option %s" "$1"
		exit 1
		;;
	esac
done
