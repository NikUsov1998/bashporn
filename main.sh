#!/bin/bash
source "libdir/libawk.sh"
source "libdir/libgrep.sh"
source "libdir/libcut.sh"

remove_value()
{
	local -n array_ptr=$1
	local value=$2
	echo "$value"
	local new_array=()
	for item in "${array_ptr[@]}"; do
		echo "$item"
		echo "$value"
		if "$item" != "$value"; then
			new_array+=$item
		fi	
	done
	array_ptr="${new_array[@]}"
}

remove_value_by_index()
{
	local -n array_ptr=$1
	local index=$2
	echo ${array_ptr[@]}
	echo $index

	if [[ -n $array_ptr[$index] ]]; then
		unset array_ptr[$index]
	fi
	echo ${array_ptr[@]}

	#local -n array_ptr=$1
	#local index=$2
	#echo "$value"
	#local new_array=()

	#for i in "${!array_ptr[@]}"; do
	#	if $i -ne $index; then
	#		new_array+=("${array_ptr[$i]}")
	#	fi	
	#done
	#array_ptr=("${new_array[@]}")
}

append_value()
{
	local -n array_ptr=$1
	local item=$2
	array_ptr+=("$item")
}

create_array()
{
	# array declaration
	local_array=("val1" "val2" "val3" "val4" "val5")
	# print array lenght
	echo ${#local_array[@]}
}

sort_array_copy()
{
	echo pass
}

sort_array()
{
	local -n array_ptr=$1
	for item in "${array_ptr[@]}"; do
		next_item
		if item; then
			echo ""
		else
			echo ""	
		fi
	done
}

shuffle_array()
{
	echo ""
}

print()
{
	echo Hello!
}

main()
{
	print
	create_array
	local_array=("val1" "val2" "val3" "val4" "val5")
	echo ${local_array[@]}
	append_value local_array "val6"
	echo ${local_array[@]}
	remove_value_by_index local_array 6
	echo ${local_array[@]}
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	main "$@"
fi
