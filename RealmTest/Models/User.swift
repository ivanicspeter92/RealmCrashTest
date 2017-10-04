import RealmSwift
import Foundation

class User: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var name: String?
    @objc dynamic var fullName: String?
    @objc dynamic var profileImageID: String?
    @objc dynamic var coverID: String?
    @objc dynamic var profileText: String?
    
    var imageCount = RealmOptional<Int>()
    var followerCount = RealmOptional<Int>()
    var followingCount = RealmOptional<Int>()
    
    var followedUsers = List<User>()
    var followerUsers = List<User>()
    
    var userID: String? {
        get {
            return self.id
        }
    }
    
    var username: String? {
        get {
            return self.name
        }
    }
    
    @objc override static func primaryKey() -> String? {
        return "id"
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? User else { return false }
        
        return object.id == self.id
    }
}
