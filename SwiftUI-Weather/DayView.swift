//
//  DayView.swift
//  SwiftUI-Weather
//
//  Created by user on 26/10/25.
//

import SwiftUI

struct DayView: View {

    var title: String
    var image: String
    var temp: Int
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 16, weight: .bold, design: .default))
                .foregroundColor(.white)
            VStack(spacing: 8) {
                Image(systemName: image)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                Text("\(temp)°")
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    DayView(title: "hey", image: "hey", temp: 30)
}
