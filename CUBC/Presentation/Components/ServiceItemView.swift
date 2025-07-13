//
//  ServiceItemView.swift
//  CUBC
//
//  Created by JoshipTy on 13/7/25.
//


import SwiftUI

struct ServiceItemView: View {
    let service: DashboardViewModel.ServiceItem

    var body: some View {
        VStack(alignment: .leading) {
            Text(service.title)
                .foregroundColor(.gray)
                .font(.system(size: 16))
                .lineLimit(2)
                .padding(.horizontal, 8)

            Spacer()

            HStack {
                Spacer()
                Image(systemName: service.icon)
                    .font(.system(size: 28))
                    .foregroundColor(.gray)
            }
        }
        .frame(minHeight: 80)
        .padding(8)
        .background(Color(UIColor.systemGray6))
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color(UIColor.systemGray4), lineWidth: 4)
        )
        .cornerRadius(14)
    }
}
