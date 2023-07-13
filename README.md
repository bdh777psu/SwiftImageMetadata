# SwiftImageMetadata
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdh777psu%2FSwiftImageMetadata%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/bdh777psu/SwiftImageMetadata)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbdh777psu%2FSwiftImageMetadata%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/bdh777psu/SwiftImageMetadata)

A simple image file metadata extraction utility in Swift.


## Description
This Swift Package was designed to be a simple utility tool to extract metadata from image files levraging Apple's ['Image I/O' Framework](https://developer.apple.com/documentation/imageio), which can "read and write most image file formats, and access an image’s metadata".


## Installation
SwiftImageMetadata is available as a Swift Package. To install
it, simply add the following line to your 'Package.swift' file:

```ruby
.package(url: "https://github.com/bdh777psu/SwiftImageMetadata", branch: "main"),
```

...or drag the SwiftImageMetadata.swift file into your project.


## Usage Example
```ruby
import SwiftImageMetadata

let pathToFile = URL(filePath: "/path/file.heic")

let simUtil = SwiftImageMetadata()
let metadata = simUtil.readImageMetadata(fromURL: pathToFile, forMetadata: .gps)

print(metadata)
```

## Available Metadata formats
```ruby
.all //returns all available metadata
.exif
.gps
.makeApple
.tiff
```

## Author
Diogo Lessa


## License
SwiftImageMetadata is available under the MIT license.
