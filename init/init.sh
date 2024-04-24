#! /bin/bash

sleep 10

# Compile SU2 on the main node in the session
echo "Compiling SU2"
bash /tmp/SU2/init/compile_SU2.sh

echo "Changing to /data directory to begin data processing."

cd /data

# Provide permission to run bash file in /data directory
chmod -R 0777 /data

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
