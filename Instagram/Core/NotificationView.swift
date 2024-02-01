//
//  NotificationView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 30/01/24.
//
import Charts
import SwiftUI

struct AppleData: Identifiable {
    let id: UUID = UUID()
    var date: String
    var volume: Double
    var price: Double
}

struct NotificationView: View {
    
    var appleStock = [
        AppleData(date: "01/29/2024", volume: 47145620, price: 67.73),
        AppleData(date: "01/26/2024", volume: 44594010, price: 34.42),
        AppleData(date: "01/25/2024", volume: 54822130, price: 67.17),
        AppleData(date: "01/23/2024", volume: 54822130, price: 21.18),
        AppleData(date: "01/22/2024", volume: 54822130, price: 89.89),
        AppleData(date: "01/19/2024", volume: 54822130, price: 45.56),
        AppleData(date: "01/18/2024", volume: 54822130, price: 78.63),
        AppleData(date: "01/17/2024", volume: 54822130, price: 70.68),
        AppleData(date: "01/16/2024", volume: 54822130, price: 65.63),
        AppleData(date: "01/12/2024", volume: 54822130, price: 20.92),
    ]
    
    var body: some View {
        
        let prevColor = Color(hue: 0.69, saturation: 0.19, brightness: 0.79)
        let curColor = Color(hue: 0.33, saturation: 0.81, brightness: 0.76)
        let curGradient = LinearGradient(
            gradient: Gradient (
                colors: [
                    curColor.opacity(0.5),
                    curColor.opacity(0.2),
                    curColor.opacity(0.05),
                ]
            ),
            startPoint: .top,
            endPoint: .bottom
        )
        
        NavigationStack {
            Chart {
                ForEach(appleStock) {
                    LineMark(
                        x: .value("Date", $0.date),
                        y: .value("Price", $0.price)
                    )
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(.green)
                    .symbol {
                        Circle()
                            .fill(.green.opacity(0.5))
                            .frame(width: 10)
                            .shadow(radius: 2)
                    }
                    
                    
                    AreaMark(x: .value("Date", $0.date), y: .value("Price", $0.price))
                        .interpolationMethod(.catmullRom)
                        .foregroundStyle(curGradient)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
        }
    }
}

#Preview {
    NotificationView()
}
