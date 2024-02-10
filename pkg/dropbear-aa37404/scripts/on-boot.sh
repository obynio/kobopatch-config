#!/bin/sh

case "$(pidof dropbear | wc -w)" in
0) dropbear &
   ;;
esac

exit 0
