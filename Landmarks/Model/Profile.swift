import Foundation

struct Profile {
    var username: String
    var preferNotification = true
    var seasonalPhoto = Season.winter
    var goalData = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Codable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
