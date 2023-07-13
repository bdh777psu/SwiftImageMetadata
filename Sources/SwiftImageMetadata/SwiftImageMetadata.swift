import Foundation
import ImageIO

enum Metadata {
    case all
    case exif
    case gps
    case makeApple
    case tiff
}

public struct SwiftImageMetadata {
    
    /// Reads source image input and extracts related metadata from file
    /// - Parameters:
    ///   - url: Filepath to image resource
    ///   - key: Metadata type to return
    /// - Returns: Dictionary representation of chosen metadata type, if exists
    func readImageMetadata(fromURL url: URL, forMetadata key: Metadata) -> NSDictionary? {
        if let source = CGImageSourceCreateWithURL(url as CFURL, nil),
           let metadata: NSDictionary = CGImageSourceCopyPropertiesAtIndex(source, 0, nil) {
            
            switch key {
            case .all:
                return metadata
            case .exif:
                return metadata.value(forKey: "{Exif}") as? NSDictionary
            case .gps:
                return metadata.value(forKey: "{GPS}") as? NSDictionary
            case .makeApple:
                return metadata.value(forKey: "{MakerApple}") as? NSDictionary
            case .tiff:
                return metadata.value(forKey: "{TIFF}") as? NSDictionary
            }
        }
        
        return nil
    }
}
