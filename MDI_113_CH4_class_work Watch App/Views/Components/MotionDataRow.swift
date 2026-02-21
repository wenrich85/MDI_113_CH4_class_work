//
//  MotionDataRow.swift
//  MDI_113_CH4_class_work
//
//  Created by Wendell Richards on 2/21/26.
//

import SwiftUI

struct MotionDataRow: View {
    let label: String
    let value: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text(label)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(color)
                .frame(width: 20)
            
            
            // Visual Bar
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    //background Bar
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.3))
                    
                    RoundedRectangle(cornerRadius: 4)
                        .fill(color)
                        .frame(width: abs(value) * geometry.size.width/2)
                        .offset(x: value < 0 ? geometry.size.width/2 - abs(value) * geometry.size.width / 2 : geometry.size.width / 2)
                    
                    
                    Rectangle()
                        .fill(Color.white.opacity(0.5))
                        .frame(width: 1)
                        .offset(x: geometry.size.width / 2)
                }
            }
            .frame(height: 20)
        }
    }
}

#Preview {
    MotionDataRow(label: "acc.x", value: 0.56, color: .cyan)
}
