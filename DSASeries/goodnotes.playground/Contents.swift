import UIKit

var greeting = "Hello, playground"
func GetRejectedRequests(requests: [String], limit_per_second: Int) -> [Int] {
    var arrayOfRejectedRequest = [Int]()
    var lastuserRequestTime = [String: Date]()
    let currentTime = Date()
    for (index, req) in requests.enumerated(){
        
        if let lasttime = lastuserRequestTime[req]{
            if Int(currentTime.timeIntervalSince(lasttime)) < limit_per_second {
                arrayOfRejectedRequest.append(index)
            }
         }
        lastuserRequestTime[req] = currentTime
    }
    return arrayOfRejectedRequest
}
print(GetRejectedRequests(requests: ["1","2","1","3"], limit_per_second: 1))
