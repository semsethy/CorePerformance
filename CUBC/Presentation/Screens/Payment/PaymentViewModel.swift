//
//  PaymentViewModel.swift
//  CUBC
//
//  Created by JoshipTy on 9/7/25.
//

import SwiftUI

class PaymentViewModel: ObservableObject {
    @Published var items: [PaymentItem] = [
        PaymentItem(iconName: "person", title: "Mobile Top-up", destination: AnyView(Text("Mobile Top-up Screen"))),
        PaymentItem(iconName: "person", title: "Credit Card", destination: AnyView(QrCodeScreen())),
        PaymentItem(iconName: "person", title: "Property Management Fee", destination: nil)
    ]
}
