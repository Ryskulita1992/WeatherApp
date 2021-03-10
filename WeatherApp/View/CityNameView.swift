//
//  CityNameView.swift
//  WeatherApp
//
//  Created by admin on 09.03.2021.
//

import SwiftUI


struct CityNameView : View {
    
    var city: String
    var date: String
    
    var body: some View {
        HStack{
            VStack(alignment: .center, spacing: 10){
                Text(city)
                    .font(.subheadline)
                    .bold()
                    Text(date)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.pink)

            }
        }
    }
}

struct CityNameView_Prreviews: PreviewProvider {
   
    static var previews: some View {
        ContentView()
    }
}
