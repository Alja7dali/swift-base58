###### This is an implementation of [Base58](https://en.wikipedia.org/wiki/Base58) `encode`/`decode` `check`/`uncheck` algorithm.

#### Example:

```swift
import Base58

/// Encoding to Base58
/// 1. convert string to bytes (utf8 format)
let bytes = "Hello, World!".makeBytes()
/// 2. encode bytes using base58 algorithm
let encodedBytes = Base58.encode(bytes)
/// 3. converting bytes back to string
let encodedString = try String(encoded) // "72k1xXWG59fYdzSNoA"


/// Decoding from Base58
/// 1. convert string to bytes (utf8 format)
let bytes = "72k1xXWG59fYdzSNoA".makeBytes()
/// 2. decode bytes using base58 algorithm
let decodedBytes = try Base58.decode(bytes)
/// 3. converting bytes back to string
let decodedString = try String(encoded) // "Hello, World!"


/// Encoding to Base58Check
/// 1. convert string to bytes (utf8 format)
let bytes = "Hello, World!".makeBytes()
/// 2. encode bytes using base58Check algorithm
let encodedBytes = Base58.check(bytes)
/// 3. converting bytes back to string
let encodedString = try String(encoded) // "gTazoqFvnegwaKM8v2MZsVw"


/// Decoding from Base58Check
/// 1. convert string to bytes (utf8 format)
let bytes = "gTazoqFvnegwaKM8v2MZsVw".makeBytes()
/// 2. decode bytes using base58Check algorithm
let decodedBytes = try Base58.uncheck(bytes)
/// 3. converting bytes back to string
let decodedString = try String(encoded) // "Hello, World!"
```

#### Importing Base58:

To include `Base58` in your project, you need to add the following to the `dependencies` attribute defined in your `Package.swift` file.
```swift
dependencies: [
  .package(url: "https://github.com/alja7dali/swift-base58.git", from: "1.0.0")
]
```