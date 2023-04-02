//
//  PlantViewController.swift
//  PlantWatering
//
//  Created by Ananya Vangoor on 3/31/23.
//

import UIKit

class PlantViewController: UIViewController {


    @IBOutlet weak var moreInfo: UITextView!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var WateringDay: UILabel!
    //    @IBOutlet weak var Precipitation: UILabel!
//    @IBOutlet weak var plant_image: UIImageView!
    var text = "Precipitation"
    var wateringDay = "Monday"
    var condition = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        if(text == "shower rain" || text == "rain" || text == "thunderstorm"){
            WateringDay.text = "The weather for your location will have \(text). You WILL NOT need to water your plants before the next watering cycle \(wateringDay)."
        } else if(text == "snow"){
            WateringDay.text = "The weather for your location will have \(text). Get your plants inside!"
        } else {
            WateringDay.text = "The weather for your location will have \(text). You WILL need to water your plants before the next watering cycle \(wateringDay)."
        }
        switch condition {
        case 200...232:
            weatherImage.image = UIImage(systemName: "cloud.bolt")
            break
        case 300...321:
            weatherImage.image = UIImage(systemName: "cloud.drizzle")
            break
        case 500...531:
            weatherImage.image = UIImage(systemName: "cloud.rain")
            break
        case 600...622:
            weatherImage.image = UIImage(systemName: "cloud.snow")
            break
        case 701...781:
            weatherImage.image = UIImage(systemName: "cloud.fog")
            break
        case 800:
            weatherImage.image = UIImage(systemName: "sun.max")
            break
        default:
            weatherImage.image = UIImage(systemName: "cloud")
            break
        }
        
    }
}
