//
//  WeatherResponse.swift
//  WeatherApp
//
//  Created by admin on 26.02.2021.
//

import Foundation

struct WeatherResponse : Codable {
    var current : WeatherSubclass
    var hourly : [Weather]
    var daily : [DailyWeather]
    
    static func empty() -> WeatherResponse {
        return WeatherResponse(current : WeatherSubclass(), hourly:
                                [Weather](repeating: Weather(), count: 23), daily:
                                [DailyWeather](repeating: DailyWeather(), count: 8))
    }
    
}
