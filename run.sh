echo " === run test on simulator"


if [ -n "$FLOW_IOS_COMPILE_WORKSPACE" ]; then
  params="-workspace '$FLOW_IOS_COMPILE_WORKSPACE'"
fi

if [ -n "$FLOW_IOS_COMPILE_PROJECT" ]; then
  params="-project '$FLOW_IOS_COMPILE_PROJECT'"
fi

if [ -n "$FLOW_IOS_COMPILE_SCHEME" ]; then
  params="$params -scheme '$FLOW_IOS_COMPILE_SCHEME'"
else

if [ -n "$FLOW_IOS_COMPILE_CONFIGURATION" ]; then
  params="$params -configuration '$FLOW_IOS_COMPILE_CONFIGURATION'"
else

xcodebuild test $params -destination 'platform=iOS Simulator,name=iPhone 6' | xcpretty
