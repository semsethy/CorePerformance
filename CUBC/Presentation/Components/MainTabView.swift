////
////  MainTabView.swift
////  CUBC
////
////  Created by JoshipTy on 12/7/25.
////
//
//
//import SwiftUI
//
//struct MainTabView: View {
//    @State private var selectedTab = 0
////    @State private var selectedTab1: CustomTabMainView.Tab = .home
//    
//    var body: some View {
//        ZStack {
//            TabView(selection: $selectedTab) {
//                NavigationStack {
//                    DashboardView()
//                }
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//                .tag(0)
//                
//                NavigationStack {
////                    QRScannerView()
//                }
//                .tabItem {
//                    Image(systemName: "qrcode.viewfinder")
//                    Text("Scan")
//                }
//                .tag(1)
//
//                NavigationStack {
//                    PaymentView()
//                }
//                .tabItem {
//                    Image(systemName: "list.star")
//                    Text("Payment")
//                }
//                .tag(2)
//            }
//        }
//    }
//}
//
//#Preview {
//    MainTabView()
//}
