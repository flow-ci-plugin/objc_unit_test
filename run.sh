echo "==== start to run test by fastlane ===="

echo "selected test device: $FLOW_IOS_TEST_DEVICE"

fastlane scan $FLOW_FASTLANE_PARAM --device $FLOW_IOS_TEST_DEVICE --clean
