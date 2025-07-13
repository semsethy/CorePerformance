////
////  CustomTabBar.swift
////  CUBC
////
////  Created by JoshipTy on 12/7/25.
////
//
//import SwiftUI
//
//struct CustomTabBar: View {
//    @Binding var selectedTab: Tab
//
//    var body: some View {
//        ZStack {
//            Arc()
//                .fill(Color.white)
//                .frame(height: 90)
//                .shadow(radius: 6)
//
//            HStack {
//                Button {
//                    selectedTab = .home
//                } label: {
//                    VStack(spacing: 4) {
//                        Image(systemName: "house")
//                        Text("Home")
//                    }
//                }
//
//                Spacer()
//
//                Button {
//                    selectedTab = .payment
//                } label: {
//                    VStack(spacing: 4) {
//                        Image(systemName: "list.star")
//                        Text("Payment")
//                    }
//                }
//            }
//            .padding(.horizontal, 60)
//            .padding(.top, 20)
//
//            Button {
//                // QR Scanner Action
//            } label: {
//                Image(systemName: "qrcode.viewfinder")
//                    .font(.system(size: 30))
//                    .foregroundColor(.white)
//                    .frame(width: 74, height: 74)
//                    .background(Color.green)
//                    .clipShape(Circle())
//                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
//                    .shadow(radius: 4)
//            }
//            .offset(y: -55)
//        }
//    }
//}
