//
//  PaymentItemView.swift
//  CUBC
//
//  Created by JoshipTy on 13/7/25.
//


import SwiftUI

struct PaymentItemView: View {
    let item: PaymentItem

    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: item.iconName)
                .font(.system(size: 25))
                .padding(8)
                .background(.cyan)
                .foregroundColor(.white)
                .clipShape(Circle())

            Text(item.title)
                .font(.system(size: 18))
                .foregroundColor(.black)

            Spacer()

            Image(systemName: "chevron.right")
                .font(.system(size: 20))
                .foregroundColor(.black)
        }
        .padding(25)
        .background(Color(UIColor(white: 0.95, alpha: 1)))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 1)
        )
    }
}
