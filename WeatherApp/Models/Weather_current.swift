//
//  Weather.swift
//  WeatherApp
//
//  Created by admin on 26.02.2021.
//

import Foundation
class Weather : Codable, Identifiable {
    
    var dt: Int
    var temp: Double
    var feels_like: Double
    var pressure: Int
    var humidity: Int
    var dew_point : Double
    var clouds : Int
    var wind_deg: Int
    var weather: [WeatherDetail]
    
    enum CodingKey: String {
        case currentDate = "dt"
        case temp
        case feels_like
        case pressure
        case humidity
        case dew_point
        case clouds
        case wind_deg
        case weather
    }
    init() {
        dt = 0
        temp = 0.0
        feels_like = 0.0
        pressure = 0
        humidity = 0
        dew_point = 0.0
        clouds = 0
        wind_deg = 0
        weather = []
        
        
    }
}

extension Weather{
    var id: UUID{
        return UUID()
    }
}
class WeatherSubclass : Weather {
    var sunset: Int = 0
    var sunrise :Int = 0
    
}
