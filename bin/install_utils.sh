#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
case "$(uname -s)" in
    Darwin)
        # Max OSX
        bash "${DIR}/install_osx.sh"
        ;;
    Linux)
        # Ubuntu
        bash "${DIR}/install_linux.sh"
        ;;
esac


