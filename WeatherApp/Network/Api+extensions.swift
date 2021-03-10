//
//  Api+extensions.swift
//  WeatherApp
//
//  Created by admin on 26.02.2021.
//

import Foundation

extension API {
     static let baseURL = "https://api.openweathermap.org/data/2.5/"
    
     static func getURL(lat: Double, lon: Double) -> String{
        return "\(baseURL)oncall?lat=\(lat)&lon=\(lon)&exclude=minute&appid=\(API.key)$units=imperial"
        
    }
}
