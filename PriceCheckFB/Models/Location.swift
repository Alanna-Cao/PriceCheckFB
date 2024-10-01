
import Foundation
import FirebaseFirestore
import FirebaseFirestoreCombineSwift

struct Location: Identifiable, Comparable, Codable {
    @DocumentID var id: String?
    var location: String
  
  enum CodingKeys: String, CodingKey {
    case id
    case location
  }

  static func ==(lhs: Location, rhs: Location) -> Bool {
    return lhs.location == rhs.location
  }

  static func <(lhs: Location, rhs: Location) -> Bool {
    return lhs.location < rhs.location
  }
}

