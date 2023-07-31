#!/bin/bash
cd "$(dirname "$0")"
mkdir -p out && rm -f "out/KoboRoot.tgz"
case `uname -s` in
    Darwin)
	    case `uname -m` in
	        x86_64)
	        ./bin/kobopatch-darwin-64bit
		        ;;
            arm*)
                ./bin/kobopatch-darwin-arm
                ;;
            aarch64)
                ./bin/kobopatch-darwin-arm
                ;;
            *)
                echo "Unsupported architecture"
	esac
        ;;
    *)
        echo "Unsupported system"
	;;
esac
