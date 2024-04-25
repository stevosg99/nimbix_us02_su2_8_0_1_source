#! /bin/bash

sleep 10

# Compile SU2 on the main node in the session
echo "Compiling SU2"
cd /data/SU2/
bash /data/SU2/compile_SU2.sh

echo "Changing to /data directory to begin data processing."

# Get bash filename from session initialization
while [[ -n "$1" ]]; do
    case "$1" in
	-file)
	    shift
        BASH_FILE="$1"
		;;
	esac
    shift
done

# Call the bash file
source "$BASH_FILE"
