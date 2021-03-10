//
//  CityWeatherView.swift
//  WeatherApp
//
//  Created by admin on 09.03.2021.
//

import SwiftUI
 
struct CityWeatherView : View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View{
        VStack{
            CityNameView(city: cityVM.city,  date: cityVM.date).shadow(radius: 0 )
            TodayWeatherView(cityVM: cityVM).padding()
            HourlyWetherView(cityVM: cityVM)
            DailyWeatherView(cityVM: cityVM).padding(.bottom, 30)
        }
        Text("")
    }
}

struct CityWeatherView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
