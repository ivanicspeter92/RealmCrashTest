import Foundation
import RealmSwift

class Image: Object {
    @objc dynamic var imageID: String?
    @objc dynamic var imageThumbData: Data? // Base64 mini image data comes here
    @objc dynamic var createdAt: Date?
    @objc dynamic var fullName: String?
    @objc dynamic var privacy: String?
    @objc dynamic var loveCount: Int = 0
    @objc dynamic var ratio: Float = 0
    @objc dynamic var author: User?
    @objc dynamic var title: String?
    @objc dynamic var imageDescription: String?
    
    var age: TimeInterval {
        return Date().timeIntervalSince(createdAt ?? Date())
    }
    
    @objc override static func primaryKey() -> String? {
        return "imageID"
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? Image else { return false }
        
        return imageID == object.imageID
    }
}
