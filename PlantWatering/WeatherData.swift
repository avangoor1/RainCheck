
import Foundation

struct WeatherData: Codable {
    let name : String
    let main : Main
    let weather : [Weather]
    let coord : Coordinates
}

struct Main : Codable {
    let temp : Double
}

struct Coordinates : Codable {
    let lon : Double
    let lat : Double
}

struct Weather : Codable {
    let description : String
    let id : Int
}

