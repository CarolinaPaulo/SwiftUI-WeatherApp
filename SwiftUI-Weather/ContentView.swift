//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by user on 26/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cuppertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                HStack(spacing: 20){
                    DayView(title: "TUE", image: "cloud.sun.fill", temp: 74)
                    DayView(title: "WED", image: "sun.max.fill", temp: 70)
                    DayView(title: "THU", image: "wind.snow", temp: 66)
                    DayView(title: "FRI", image: "sunset.fill", temp: 60)
                    DayView(title: "SAT", image: "moon.stars.fill", temp: 55)
                }
                Spacer()
                Button {
                    print("tapped")
                } label: {
                    Text("Change time of day")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
