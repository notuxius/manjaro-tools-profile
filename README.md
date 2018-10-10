# Plasma Wayland Testing Manjaro Tools Profile

Manjaro tools profile used to create Netrunner Rolling Wayland/Xorg testing ISO images

Unstable repositories - experimental kernel - development version of Calamares installer

Default username: netrunner

Default password: netrunner

Escalated privileges don't require entering of password in live mode

Links to wiki with instructions how to build and modify the profile:

https://wiki.manjaro.org/index.php?title=Manjaro-tools

https://wiki.manjaro.org/index.php?title=Build_Manjaro_ISOs_with_buildiso

'prepare-testing-config' script can be used for initial autoconfiguring of testing setup

Use '-m', '-f' or '-d' options for toggling of minimal/full profile and it's redownloading. Exiting...

For example:
prepare-testing-config -m use minimal profile for build,
prepare-testing-config -f use full profile for build,
prepare-testing-config -md use minimal profile for build, backup, remove and redownload existing profile,
prepare-testing-config -fd use full profile for build, backup, remove and redownload existing profile

Profile ISOs can be built with 'buildiso -p plasmawaylandtest' command

Link to created ISOs with current master branch profile files and some older versions:

https://drive.google.com/drive/folders/1ptFf2tZYNC3i04aAL1l84TyABeI60QCZ

For building official stable Netrunner Rolling ISOs - please refer to:

https://github.com/netrunner-rolling/manjaro-tools-profile
