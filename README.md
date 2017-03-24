# DoubleMetaphoneSwift
This is an implementation of the Double Metaphone algorithm in Swift. The algorithm was originally coded by Lawrence Philips.



### Setting up with [CocoaPods](http://cocoapods.org/?q=DoubleMetaphoneSwift)
```ruby
source 'https://github.com/CocoaPods/Specs.git'
pod 'DoubleMetaphoneSwift', '~> 0.0.1'
```

## Usage
Import DoubleMetaphoneSwift at the top of the Swift file.

```swift
import DoubleMetaphoneSwift
```

The returned Double Metaphone calculation returns the primary and secondary calculations as a tuple.
```swift
guard let (primary, secondary) = DoubleMetaphoneSwift.calculate(input: "Hello World!") else {
    print("Failed to calculate...")
    return
}

print("Primary: \(primary)")      // Primary: HLRL
print("Secondary: \(secondary)")  // Secondary: HLRL
```

