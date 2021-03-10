//
//  ContentView.swift
//  WeatherApp
//
//  Created by admin on 26.02.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cityVM = CityViewViewModel()
    var body: some View {
        ZStack(alignment: .bottom){
            VStack(spacing: 0){
                MenuHeaderView(cityVM: cityVM)
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: true){
                    CityWeatherView(cityVM: cityVM)
                    
                }
            }.padding(.top, 50)
            
        }.background(LinearGradient(gradient: Gradient(colors: [  Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),   Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
