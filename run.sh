echo " === run test on simulator"
echo "xcodebuild test -project 'FoodTracker.xcodeproj' -scheme 'FoodTracker' -destination 'platform=iOS Simulator,OS=10.1,name=iPhone 6' -configuration 'Debug' | xcpretty"
xcodebuild test -project 'FoodTracker.xcodeproj' -scheme 'FoodTracker' -destination 'platform=iOS Simulator,OS=10.1,name=iPhone 6' -configuration 'Debug' | xcpretty
