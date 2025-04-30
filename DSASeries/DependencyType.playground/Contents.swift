import UIKit

var greeting = "Hello, playground"
protocol DatabaseService{
    func fetchData()
}
class SQlite: DatabaseService
{
    func fetchData() {
        
    }
    
}
class userDefault : DatabaseService {
    func fetchData() {
        
    }
    
    
}
class DataBaseManger {
    func loadData(service:DatabaseService) {
        service.fetchData()
    }
    
}
let service = userDefault()
let datmager = DataBaseManger()

datmager.loadData(service: service)
func fetchData()async -> String {
    return ""
}
Task {
    let data = await fetchData()
}
/// use
actor user : Sendable {
    let name: String
    init(name: String) {
        self.name = name
    }
}
