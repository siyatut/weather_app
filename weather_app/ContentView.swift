//
//  ContentView.swift
//  weather_app
//
//  Created by Anastasia Tyutinova on 13/8/2568 BE.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
                            
            VStack {
                CityTextView(cityName: "Moscow")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 23)
              
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
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Изменить время суток",
                                  textColor: .blue,
                                  backgroundColor: .white)
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
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue,
                                isNight ? .gray : Color("lightColor")],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherStatusView : View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
            
        }
        .padding(.bottom, 40)
    }
}

