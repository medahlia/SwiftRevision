import Foundation


struct Item: Identifiable, Codable {
    var id = UUID()
    var todo: String
}
