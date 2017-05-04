echo "==== start to run test by fastlane ===="

FLOW_OBJC_TEST_DEVICE="iPhone 6"

fastlane scan $FLOW_FASTLANE_PARAM --device $FLOW_OBJC_TEST_DEVICE --clean
