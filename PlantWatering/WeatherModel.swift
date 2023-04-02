import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature : Double
    let longitude : Double
    let latitude : Double
    let blurb : String
    
    var temperatureString : String {
        return String(format: "%.4f", temperature)
    }
    var longitudeCoord : String{
        return String(format: "%.4f", longitude)
    }
    var latitudeCoord : String {
        return String(format: "%.4f", latitude)
    }
    
    var WeatherDescription : String {
        return blurb
    }
    
    var conditionName : Int {
        
        return conditionId
    }
    
}
