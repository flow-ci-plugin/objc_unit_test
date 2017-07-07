echo "==== This step must added after objc build ===="

if [ -n "$FLOW_IOS_TEST_SCHEME" ]; then
	FLOW_IOS_FASTLANE_PARAMS="--scheme $FLOW_IOS_TEST_SCHEME"
else
	FLOW_IOS_FASTLANE_PARAMS="--scheme $FLOW_IOS_COMPILE_SCHEME"
fi

if [ -n "$FLOW_IOS_TEST_CONFIGURATION" ]; then
	FLOW_IOS_FASTLANE_PARAMS="$FLOW_IOS_FASTLANE_PARAMS --configuration $FLOW_IOS_TEST_CONFIGURATION"	
else
	FLOW_IOS_FASTLANE_PARAMS="$FLOW_IOS_FASTLANE_PARAMS --configuration $FLOW_IOS_TEST_CONFIGURATION"
fi

echo "selected test device: $FLOW_IOS_TEST_DEVICE"

fastlane scan $FLOW_IOS_FASTLANE_PARAMS --device $FLOW_IOS_TEST_DEVICE --clean

gem install flow_project_manager
flow_project_manager test_output/report.junit
