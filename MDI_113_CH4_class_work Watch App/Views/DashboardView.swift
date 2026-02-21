//
//  DashboardView.swift
//  MDI_113_CH4_class_work
//
//  Created by Wendell Richards on 2/21/26.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                
                VStack(spacing: 12) {
                    NavigationLink(destination: MotionView()) {
                        DashboardCard(icon: "figure.walk.motion", title: "C Motion", subtitle: "Track Sensor Data", gradientColor: [.blue, .teal])
                    }
                    
                }
            }
        }
    }
}

#Preview {
    DashboardView()
}
