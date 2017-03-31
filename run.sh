echo " === run test on simulator"
echo "xcodebuild test -project '$xcodeproj' -scheme '$FLOW_IOS_COMPILE_SCHEME' -destination 'platform=iOS Simulator,OS=10.1,name=iPhone 6' -configuration '$FLOW_IOS_COMPILE_CONFIGURATION' | xcpretty"
xcodebuild test -project '$xcodeproj' -scheme '$FLOW_IOS_COMPILE_SCHEME' -destination 'platform=iOS Simulator,OS=10.1,name=iPhone 6' -configuration '$FLOW_IOS_COMPILE_CONFIGURATION' | xcpretty
