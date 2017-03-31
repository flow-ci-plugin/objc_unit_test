echo " === run test on simulator"
echo "xcodebuild test -project '$FLOW_IOS_COMPILE_PROJECT' -scheme '$FLOW_IOS_COMPILE_SCHEME' -destination 'platform=iOS Simulator,OS=10.1,name=iPhone 6' -configuration Debug | xcpretty"
xcodebuild test -project $FLOW_IOS_COMPILE_PROJECT -scheme $FLOW_IOS_COMPILE_SCHEME -destination 'platform=iOS Simulator,OS=10.1,name=iPhone 6' -configuration Debug | xcpretty
