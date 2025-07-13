//
//  CustomTabMainView.swift
//  CUBC
//
//  Created by JoshipTy on 12/7/25.
//

import SwiftUI

struct CustomTabMainView: View {
    @State private var selectedTab: Tab = .home

    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                TabView(selection: $selectedTab) {
                    NavigationView { DashboardView() }
                        .tag(Tab.home)

                    NavigationView { PaymentView() }
                        .tag(Tab.payment)
                }

                TabBar(selectedTab: $selectedTab)
                    .offset(y:20)
            }
            .ignoresSafeArea(.keyboard, edges: .bottom)
        }
    }
}
 
enum Tab {
    case home, payment
}

#Preview {
    CustomTabMainView()
}
 
  
 
 
 
  
