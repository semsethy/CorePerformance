//
//  DashboardToolbar.swift
//  CUBC
//
//  Created by JoshipTy on 13/7/25.
//


import SwiftUI

struct DashboardToolbar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Button(action: {}) {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(5)
                    .background(Color(UIColor.systemGray6))
                    .clipShape(Circle())
                    .foregroundColor(.gray)
            }
        }

        ToolbarItemGroup(placement: .navigationBarTrailing) {
            Button(action: {}) {
                HStack(spacing: 8) {
                    Image(systemName: "location.fill")
                        .resizable()
                        .frame(width: 18, height: 18)
                    Text("Location")
                        .font(.subheadline)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color(UIColor.systemGray6))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(UIColor.systemGray4), lineWidth: 4)
                )
                .cornerRadius(20)
                .foregroundColor(.gray)
            }

            Button(action: {}) {
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(5)
                    .foregroundColor(.gray)
            }
        }
    }
}
