//
//  DashboardCard.swift
//  MDI_113_CH4_class_work
//
//  Created by Wendell Richards on 2/21/26.
//

import SwiftUI

struct DashboardCard: View {
    let icon: String
    let title: String
    let subtitle: String
    let gradientColor: [Color]
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            HStack{
                Image(systemName: icon)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.white.opacity(0.7))
            }
            VStack(alignment: .leading, spacing: 2){
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    
                Text(subtitle)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.white.opacity(0.7))
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            LinearGradient(
                gradient: Gradient(colors: gradientColor),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
                
            )
            
        )
        .cornerRadius(12)
        .shadow(color: gradientColor.first!.opacity(0.3), radius: 4, x: 0, y:2)
    }
}

#Preview {
    DashboardCard(icon: "figure.walk.motion", title: "C Motion", subtitle: "Track Sensor Data", gradientColor: [.blue, .teal])
}
