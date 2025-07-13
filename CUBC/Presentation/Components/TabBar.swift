//
//  TabBar.swift
//  Weather
//
//  Created by Dara To on 2022-06-13.
//

import SwiftUI

struct TabBar: View {
    @StateObject private var authenticator = Authenticator()
    @Binding var selectedTab: Tab
    @State private var qrIsShown: Bool = false
    @State private var showFailureAlert = false

    var body: some View {
        ZStack(alignment: .bottom) {
            Arc()
                .fill(Color(UIColor(white: 0.95, alpha: 1)))
                .frame(height: 90)
                .shadow(radius: 6)
                .offset(y: 15)

            HStack {
                Spacer()
                tabButton(icon: "house", label: "Home", tab: .home)
                Spacer()
                Spacer()
                tabButton(icon: "list.star", label: "Payment", tab: .payment)
                Spacer()
            }
            .offset(y: -20)

            Button {
                
                authenticator.authenticate { success in
                    if success {
                        qrIsShown = true
                    } else {
                        showFailureAlert = true
                    }
                }
            } label: {
                Image(systemName: "qrcode.viewfinder")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .frame(width: 74, height: 74)
                    .background(Color.green)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 4)
            }
            .offset(y: -55)
            .buttonStyle(NoHighlightButtonStyle())
        }
        .frame(maxWidth: .infinity)
        .frame(height: 90)
        .ignoresSafeArea(edges: .bottom)
        .fullScreenCover(isPresented: $qrIsShown) {
            QrCodeScreen()
        }
        .alert("Authentication Failed", isPresented: $showFailureAlert) {
            Button("OK", role: .cancel) { }
        }
    }

    private func tabButton(icon: String, label: String, tab: Tab) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack(spacing: 5) {
                Image(systemName: icon)
                Text(label)
            }
            .foregroundColor(selectedTab == tab ? .blue : .gray)
        }
    }
}


#Preview {
    TabBar(selectedTab: .constant(.home))
}

