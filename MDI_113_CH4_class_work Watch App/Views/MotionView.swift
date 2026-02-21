//
//  MotionView.swift
//  MDI_113_CH4_class_work
//
//  Created by Wendell Richards on 2/21/26.
//

import SwiftUI

struct MotionView: View {
    @StateObject private var viewModel = MotionViewModel()
    
    
    var body: some View {
        ScrollView{
            VStack(spacing: 16){
                VStack(spacing: 8){
                    Image(systemName: viewModel.isTracking ? "figure.walking.motion" : "figure.stand")
                        .font(.system(size: 40))
                        .foregroundColor(viewModel.isTracking ? .green : .gray)
                        .symbolEffect(.pulse, isActive: viewModel.isTracking)
                    
                    Text(viewModel.isTracking ? "Tracking" : "Not Tracking")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding(.top, 8)
                
                VStack(alignment: .leading, spacing: 8){
                    Text("Acceleration")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
            }
        }
    }
}


#Preview {
    NavigationStack{
        MotionView()
    }
}
