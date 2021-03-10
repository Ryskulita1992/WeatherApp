//
//  MenuHeader.swift
//  WeatherApp
//
//  Created by admin on 09.03.2021.
//

import Foundation
import SwiftUI

struct MenuHeaderView : View {
    @ObservedObject var cityVM: CityViewViewModel
    @State private var searchTerm = "Bishkek"
   
    var body : some View{
        HStack{
            TextField("", text : $searchTerm).padding(.leading, 20)
            Button {
                cityVM.city = searchTerm
            } label : {
                ZStack{
                    RoundedRectangle (cornerRadius: 12).fill( Color.blue)
                    Image(systemName: "location.fill")
                }
            }.frame(width:100, height: 60)

        }
        .foregroundColor(.white)
        .padding()
        .background(ZStack (alignment: .leading){
            Image(systemName: "magnifyingglass")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding(.leading, 50)
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.blue.opacity(0.5))
        }
)}
}
    struct MenuHeaderView_Previews : PreviewProvider {
        
    static var previews: some View {
        ContentView()
    }
    
}
