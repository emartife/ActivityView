# ActivityView

Displays an activity indicator in the center of the screen

## Installation

### Manual

Copy  `ActivityView.swift` file to your project. That's it.

### Swift Package Manager

#### Add dependencies
Add the `ActivityView` package to the dependencies within your application’s `Package.swift` file. Substitute `"x.x.x"` with the latest `ActivityView` release.
```swift
.package(url: "https://github.com/emartife/ActivityView.git", from: "x.x.x")
```
Add `ActivityView` to your target's dependencies:
```swift
.target(name: "example", dependencies: ["ActivityView"]),
```
#### Import package
```swift
import ActivityView
```

## Usage

Show

```swift
ActivityView.shared.show()
```

Hide

```swift
ActivityView.shared.hide()
```

