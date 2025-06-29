

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var favoriteMovie: Movie?
    
    init(name: String) {
        self.name = name
    }
    
    static let sampleData: [Friend] = [
        Friend(name: "DIVY"),
        Friend(name: "LEELA"),
        Friend(name: "ANA"),
        Friend(name: "ANJUM"),
        Friend(name: "HIRA")
        
    ]
}
