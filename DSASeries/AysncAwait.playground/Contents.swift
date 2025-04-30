import UIKit

var greeting = "Hello, playground"
struct Trip: Codable {
    let id: String
    let itineray: String
    let status:TripStatus
    enum TripStatus: String, Codable {
        case confirmed
        case cancelled
        case booked
        case unkown
    }
}
func getAllCancelledtrips(for userId: String, completion:@escaping ([Trip]) -> Void) {
    
}
