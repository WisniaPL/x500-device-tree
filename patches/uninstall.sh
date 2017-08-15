echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic system/sepolicy frameworks/base frameworks/av frameworks/native frameworks/opt/telephony frameworks/opt/net/ims hardware/libhardware packages/services/Telecomm packages/services/Telephony system/netd system/core system/bt system/sepolicy packages/apps/Settings"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	#git apply --reverse $rootdirectory/device/LeEco/X3/patches/$dir/*.patch
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
