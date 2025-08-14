//
//  WeatherButton.swift
//  weather_app
//
//  Created by Anastasia Tyutinova on 13/8/2568 BE.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10, antialiased: true)
    }
}

