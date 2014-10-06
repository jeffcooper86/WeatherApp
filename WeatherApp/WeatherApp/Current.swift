//
//  Current.swift
//  WeatherApp
//
//  Created by Jeffrey Cooper on 10/6/14.
//  Copyright (c) 2014 Jeff Cooper. All rights reserved.
//

import Foundation

struct Current {
    
    var currentTime: String?
    var temperature: Int
    var humidity: Double
    var precipProbability: Double
    var summary: String
    var icon: String
    
    init(weatherDictionary: NSDictionary) {
        let currentWeather = weatherDictionary["currently"] as NSDictionary
        
        temperature = currentWeather["temperature"] as Int
        humidity = currentWeather["humidity"] as Double
        precipProbability = currentWeather["precipProbability"] as Double
        summary = currentWeather["summary"] as String
        icon = currentWeather["icon"] as String
        
        let currentTimeIntValue = currentWeather["time"] as Int
        currentTime = dateStringFromUnixtime(currentTimeIntValue)
        
    }
    
    func dateStringFromUnixtime(unixTime: Int) -> String {
        let weatherDate = NSDate(timeIntervalSince1970: NSTimeInterval(unixTime))
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.timeStyle = .ShortStyle
        
        return dateFormatter.stringFromDate(weatherDate)
    }
}