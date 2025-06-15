#!/bin/bash
export TAILSCALE_VERSION=1.84.0

cd "$(dirname "$0")"
if [ ! -f src/tailscale-${TAILSCALE_VERSION}-arm.tgz ]; then
    echo "Downloading tailscale_${TAILSCALE_VERSION}_arm.tgz from pkgs.tailscale.com ..."
    curl --progress-bar -o src/tailscale-${TAILSCALE_VERSION}-arm.tgz https://pkgs.tailscale.com/stable/tailscale_${TAILSCALE_VERSION}_arm.tgz
    rm -rf src/tailscale
    tar -xvf src/tailscale-${TAILSCALE_VERSION}-arm.tgz -C src
    mv src/tailscale_${TAILSCALE_VERSION}_arm src/tailscale
fi

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
    Linux)
	    case `uname -m` in
	        x86_64)
                ./bin/kobopatch-linux-64bit
		        ;;
            *)
                echo "Unsupported architecture"
	esac
    ;;
    *)
        echo "Unsupported system"
	    ;;
esac
