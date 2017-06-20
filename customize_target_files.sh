#/bin/bash
PWD=`pwd`
METADATA_DIR=$PWD/metadata
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files
build_prop_file=$TARGET_FILES_DIR/SYSTEM/build.prop
OTHER_DIR=$PWD/other

if [ -e $METADATA_DIR/updater ]
then
   echo "Use custom updater bin file"
   cp $METADATA_DIR/updater $TARGET_FILES_DIR/OTA/bin
fi

cp -f other/file_contexts out/target_files/META/
rm -rf $(ZIP_DIR)/system/media/audio/*
	@echo use only miui sounds!
cp -rf $(PORT_ROOT)/miui/system/media/$(local-density)/audio/* $(ZIP_DIR)/system/media/audio
rm -rf $(ZIP_DIR)/system/media/audio/create_symlink_for_audio-timestamp
rm -rf out/target_files/SYSTEM/priv-app/Dialer.apk
rm -rf out/target_files/SYSTEM/app/Launcher3.apk
rm -rf out/target_files/SYSTEM/priv-app/Keyguard.apk
rm -rf out/target_files/SYSTEM/priv-app/VoiceDialer.apk
rm -rf out/target_files/SYSTEM/priv-app/SystemUI.apk
rm -rf out/target_files/SYSTEM/app/SogouInput.apk
rm -rf out/target_files/SYSTEM/app/VideoEditor.apk
rm -rf out/target_files/SYSTEM/app/PinyinIME.apk
rm -rf out/target_files/SYSTEM/app/Music.apk
#updating bootanimation.zip
rm -rf "out/target_files/SYSTEM/media/bootanimation.zip"
cp -rf other/bootanimation.zip out/target_files/SYSTEM/media/
	echo updating boot.img
rm -rf "out/target_files/BOOTABLE_IMAGES/boot.img"
cp -rf other/boot.img out/target_files/BOOTABLE_IMAGES/
