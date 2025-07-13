//
//  DashboardViewModel.swift
//  CUBC
//
//  Created by JoshipTy on 7/7/25.
//

import SwiftUI

final class DashboardViewModel: ObservableObject {
    @Published var showEye: Bool = false

    struct ServiceItem: Identifiable {
        let id = UUID()
        let title: String
        let icon: String
    }

    let serviceItems: [ServiceItem] = [
        .init(title: "Favorite", icon: "repeat.circle"),
        .init(title: "Fixed Deposit", icon: "repeat.circle"),
        .init(title: "Top-up History", icon: "repeat.circle"),
        .init(title: "Loans", icon: "repeat.circle"),
        .init(title: "Future Schedule", icon: "repeat.circle"),
        .init(title: "FX Rates", icon: "repeat.circle")
    ]
}


//#Preview {
//    DashboardViewModel()
//}
