rm -r ~/Library/Caches/com.apple.dt.Xcode/*
rm -r ~/Library/Developer/Xcode/DerivedData/*

xcrun simctl delete unavailable

echo "Completed. Finally: check ~/Library/Developer/Xcode/iOS DeviceSupport/ manually"