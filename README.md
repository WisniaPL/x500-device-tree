# x500-device-tree
echo "export USE_CCACHE=1" >> ~/.bashrc
~/lineage/prebuilts/misc/linux-x86/ccache/ccache -M 45G
. build/envsetup.sh
lunch lineage_x500-userdebug
make -j16

sh device/leeco/x500/patches/install.sh
sh device/leeco/x500/patches/uninstall.sh
