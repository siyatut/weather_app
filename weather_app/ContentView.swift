//
//  ContentView.swift
//  weather_app
//
//  Created by Anastasia Tyutinova on 13/8/2568 BE.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, Color("lightBlue")],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Moscow")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("25°C")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                    
                }
                .padding(.bottom, 40)
              
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "ВТ",
                                   imageName: "cloud.sun.fill",
                                   temperature: 23)
                    WeatherDayView(dayOfWeek: "СР",
                                   imageName: "sun.max.fill",
                                   temperature: 28)
                    WeatherDayView(dayOfWeek: "ЧТ",
                                   imageName: "wind",
                                   temperature: 22)
                    WeatherDayView(dayOfWeek: "ПТ",
                                   imageName: "cloud.fill",
                                   temperature: 20)
                    WeatherDayView(dayOfWeek: "СБ",
                                   imageName: "cloud.rain.fill",
                                   temperature: 18)
                    
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Изменить время дня")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold))
                        .cornerRadius(10, antialiased: true)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews:
    PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
