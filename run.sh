echo "==== This step must added after objc build ===="

echo "selected test device: $FLOW_IOS_TEST_DEVICE"

fastlane scan $FLOW_IOS_FASTLANE_PARAMS --device $FLOW_IOS_TEST_DEVICE --clean
