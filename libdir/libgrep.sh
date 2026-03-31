#!/bin/bash
echo libgrep

grep_ignore_case()
{
	local pattern="$1"
	local file="$2"

	if [[ -z "$pattern" ]]; then
		echo "pattern is required!"
		return 1
	fi

	if [[ -n "$file" ]] && [[ ! -f "$file" ]]; then
		echo "file not found!"
		return 1
	fi

	grep -i "$pattern" "$file"

}


