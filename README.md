# kobopatch-config

This repository contains my configuration to tweak the kobo e-reader firmware to my liking. To update kobopatch, you can download the binaries [here](https://github.com/pgaskin/kobopatch/releases/latest).

![screen_001](https://github.com/pgaskin/kobo-mods/assets/2095991/75c5df85-e209-49d6-9df6-0570d126e7cd)


## How to use

1. Download a firmware [here](https://pgaskin.net/KoboStuff/kobofirmware.html).
2. Put the whole zip in `src`.
3. Change the path in `kobopatch.yaml`.
4. Run `./kobopatch.sh`.
5. Move the `KoboRoot.tgz` to the `.kobo` folder on your kobo and trigger the update.

## Includes

On top of the firmware tweaks, the image also contains these mods:

* [NickelMenu](https://github.com/pgaskin/NickelMenu) which provides a customizable power user menu to the kobo, greatly ehancing the experience.
*  [NickelSeries](https://github.com/pgaskin/kobo-mods/tree/master/NickelSeries) which scans automatically for calibre series on sideloaded KEPUB and EPUB books.