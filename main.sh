#!/bin/bash
print()
{
	echo Hello!
}

main()
{
	print
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	main "$@"
fi
