<p align="center">
<img src='https://github.com/avijitmobi/EasyImageVideoPicker/blob/master/Example/ScreenShots/EasySkeletonView-Dark.gif' width="250" height="500"/>
<img src='https://github.com/avijitmobi/EasyImageVideoPicker/blob/master/Example/ScreenShots/EasySkeletonView-Light.gif' width="250" height="500"/>
<footer>
<p>Dark Mode</p>
<p>Light Mode</p>
</footer>
</p>

# EasySkeletonView

[![CI Status](https://img.shields.io/travis/avijitmobi/EasySkeletonView.svg?style=flat)](https://travis-ci.org/avijitmobi/EasySkeletonView)
[![Version](https://img.shields.io/cocoapods/v/EasySkeletonView.svg?style=flat)](https://cocoapods.org/pods/EasySkeletonView)
[![License](https://img.shields.io/cocoapods/l/EasySkeletonView.svg?style=flat)](https://cocoapods.org/pods/EasySkeletonView)
[![Platform](https://img.shields.io/cocoapods/p/EasySkeletonView.svg?style=flat)](https://cocoapods.org/pods/EasySkeletonView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

EasySkeletonView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'EasySkeletonView'
```

Here is the full process to use this library. It's just simple. Just follow below's quote.

Import this library on your file.
```ruby
import EasySkeletonView
```

Decleare a variable where you want to show.
```ruby
var skeletonView : EasySkeletonView?
```

Init with view where you want to show this skeleton and set the style of the skeleton.
```ruby
skeletonView = EasySkeletonView(on: self.skView, style: .listWithCircularImage)
```

What would be height of each list. Default value is 90

```ruby
skeletonView?.eachItemHeight = 90
```

What would be the spped of gradient movement. Default value is 1
```ruby
skeletonView?.gradientSpeed = 0.7
```

What will be the gap of each list. Default value is 0.
```ruby
skeletonView?.gapOfList = 0
```

When you show line right side of circle or box then how many lines you want to show.Default value is 3
```ruby
skeletonView?.numberOfLines = 3
```

Number of list you want to show. Default is max number base your providing item height.
```ruby
skeletonView?.numOfList = 10
```

Show your animation
```ruby
skeletonView?.startAnimating()
```

Stop showing your skeleton
```ruby
self.skeletonView?.stopAnimating()
```

## Author

Avijit Babu, avijitmobi@gmail.com

## License

EasySkeletonView is available under the MIT license. See the LICENSE file for more info.
