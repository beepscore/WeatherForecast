# Purpose
Practice making a MVVM iOS app.
This app uses a code from a combination of references.

# References

## Using MVVM in iOS
by Christopher Batin
https://blog.pusher.com/mvvm-ios/
Used for the weather code

## git repo
https://github.com/cjbatin/Swift4-Decoding-JSON-Using-Codable

## The MVVM Pattern for iOS Apps in Swift: a Pragmatic Approach
https://matteomanferdini.com/mvvm-pattern-ios-swift/
Used to simplify ViewModel.

## git repo
https://github.com/matteom/FlightInfo/tree/master/FlightInfo

# Results

In an MVC app, instead of using a nib it's probably simpler to use a parent storyboard with a container view,
and a separate view controller and storyboard.
However this app uses MVVM, and we want a View that gets info from a ViewModel instead of a ViewController. So we use WindView.swift and WindView.xib.

NOTE: In WindView.xib, FileOwner is WindView and View custom class is UIView.
This avoids infinite loop when initializing.
https://stackoverflow.com/questions/9282365/load-view-from-an-external-xib-file-in-storyboard
