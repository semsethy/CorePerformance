//
//  PaymentItem.swift
//  CUBC
//
//  Created by JoshipTy on 13/7/25.
//

import SwiftUI

struct PaymentItem: Identifiable {
    let id = UUID()
    let iconName: String
    let title: String
    let destination: AnyView?
}
