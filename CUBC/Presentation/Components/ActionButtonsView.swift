//
//  ActionButtonsView.swift
//  CUBC
//
//  Created by JoshipTy on 13/7/25.
//


import SwiftUI

struct ActionButtonsView: View {
    var body: some View {
        HStack(spacing: 10) {
            ActionButton(title: "Transfer", icon: "repeat.circle")
            Image("khqr")
                .resizable()
                .cornerRadius(6)
                .frame(width: 30, height: 30)
                .padding()
                .background(Color(UIColor.systemGray6))
                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color(UIColor.systemGray4), lineWidth: 4)
                )
                .cornerRadius(14)
        }
    }
}

struct ActionButton: View {
    let title: String
    let icon: String

    var body: some View {
        HStack {
            Spacer()
            Image(systemName: icon)
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.gray)
            Text(title)
                .font(.system(size: 18))
                .foregroundColor(.black)
            Spacer()
        }
        .padding()
        .background(Color(UIColor.systemGray6))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(UIColor.systemGray4), lineWidth: 4)
        )
        .cornerRadius(16)
    }
}
