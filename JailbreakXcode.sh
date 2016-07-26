#!/bin/sh

if [ -d "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/PrivateFrameworks" ]
then
	echo "remove existing PrivateFrameworks"
  sudo rm -r /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/PrivateFrameworks

# clone PrivateFrameworks
sudo git clone https://github.com/AzerTyQsdF/PrivateFrameworks /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/PrivateFrameworks

# Remove existing SDKSettings
sudo rm /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/SDKSettings.plist

# Clone new SDKSettings in temp dir with ADHoc sign enable
sudo git clone https://github.com/AzerTyQsdF/SDKSettingsJailbreak /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/temp

# Move new SDKSettings at the correct place
sudo mv /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/temp/SDKSettings.plist ..

# Remove Temp dir.
sudo rm -r /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/temp

echo "done"
