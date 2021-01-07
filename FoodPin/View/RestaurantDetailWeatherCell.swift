//
//  RestaurantDetailWeatherCell.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2021/1/7.
//  Copyright © 2021 NDHU_CSIE. All rights reserved.
//

import UIKit

class RestaurantDetailWeatherCell: UITableViewCell {
    
    @IBOutlet var WeatherLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func getWeather(location: String){
        let APIkey = "850341838daadfe9dc89cc0b75c0a79e"
        let session = URLSession.shared
        guard let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Hualien&units=metric&lang=zh_tw&APPID=\(APIkey)")
            else{return}
        let dataTask = session.dataTask(with: weatherURL) {
            (data: Data?, response: URLResponse?, error: Error?) in
            if let error = error {
                self.WeatherLabel.text = "Error:\n\(error)"
            } else {
                if let data = data {
                    let dataString = String(data: data, encoding: String.Encoding.utf8)
                    print("All the weather data:\n\(dataString!)")
                    if let jsonObj = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? NSDictionary {
                        print(jsonObj)
                        if let mainDictionary = jsonObj.value(forKey: "main") as? NSDictionary {
                            if let wea = mainDictionary.value(forKey: "temp") {
                                DispatchQueue.main.async {
                                    self.WeatherLabel.text = "temperature: \(wea)°C"
                                }
                            }
                        } else {
                            self.WeatherLabel.text = "Error: unable to find temperature in dictionary"
                        }
                    } else {
                        self.WeatherLabel.text = "Error: unable to convert json data"
                    }
                } else {
                    self.WeatherLabel.text = "Error: did not receive data"
                }
            }
        }
        dataTask.resume()
    }
    
}
