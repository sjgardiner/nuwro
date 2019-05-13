#!/bin/bash

# Set up the UPS products needed to build GENIE
source /grid/fermiapp/products/larsoft/setups
setup root v6_12_06a -q e17:debug

# Set up much more recent versions of gdb and git
setup gdb v8_1
setup git v2_15_1

echo "Setting NuWro environment variables..."

# Finds the directory where this script is located. This method isn't
# foolproof. See https://stackoverflow.com/a/246128/4081973 if you need
# something more robust for edge cases (e.g., you're calling the script using
# symlinks).
THIS_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PYTHIA6=$PYTHIA_FQ_DIR/lib
export LD_LIBRARY_PATH=$PYTHIA6:$LD_LIBRARY_PATH
export LIBRARY_PATH=$PYTHIA6:$LIBRARY_PATH
