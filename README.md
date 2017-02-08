# x500-device-tree
echo "export USE_CCACHE=1" >> ~/.bashrc
~/aosp/prebuilts/misc/linux-x86/ccache/ccache -M 45G
. build/envsetup.sh
lunch aosp_x500-userdebug
make -j16

sh device/LeTV/x500/patches/install.sh
sh device/LeTV/x500/patches/uninstall.sh
