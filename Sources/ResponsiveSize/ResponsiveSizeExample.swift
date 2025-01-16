// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

struct ResponsiveSize: View {
    var body: some View {
        ScrollView {
            VStack(spacing: ResponsiveHelper.shared.scaleDimension(20)) {
                
                VStack(spacing: ResponsiveHelper.shared.scaleDimension(20)) {
                    Text("Responsive Font with Responsive Spacing")
                        .responsiveFontSize(16)
                    
                    Text("Responsive Font with Responsive Spacing")
                        .responsiveFontSize(16, fontName: "Times New Roman")
                    
                    Text("Normal Font with Responsive Spacing")
                        .font(.system(size: 16))
                    
                    Image(systemName: "house.fill")
                        .resizable()
                        .scaledToFit()
                        .responsiveFrame(width: 100, height: 100)
                        .foregroundColor(.blue)
                    
                    Button(action: {}) {
                        Text("Responsive Button")
                            .responsiveFontSize(16)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .responsiveCornerRadius(10)
                    }
                    
                    Rectangle()
                        .responsiveSquare(size: 50)
                        .responsiveCornerRadius(5)
                    
                    Circle()
                        .responsiveFrame(width: 50, height: 50)
                    
                }
                .responsivePadding(20)
                .background(Color.green.opacity(0.2))
                
                VStack(spacing: 20) {
                    Text("Responsive Font with Normal Spacing")
                        .responsiveFontSize(16)
                    
                    Text("Normal Font with Normal Spacing")
                        .font(.system(size: 16))
                    
                    Image(systemName: "house.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                    
                    Button(action: {}) {
                        Text("Responsive Button")
                            .font(.system(size: 16))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Rectangle()
                        .frame(width: 50, height: 50)
                        .cornerRadius(5)
                    
                    Circle()
                        .frame(width: 50)
                }
                .padding(20)
                .background(Color.yellow.opacity(0.2))
            }
        }
        .background(Color.gray.opacity(0.1))
    }
}
