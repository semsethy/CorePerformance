//
//  PaymentView.swift
//  CUBC
//
//  Created by JoshipTy on 9/7/25.
//

import SwiftUI

struct PaymentView: View {
    @StateObject private var viewModel = PaymentViewModel()

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(viewModel.items) { item in
                    if let destination = item.destination {
                        NavigationLink(destination: destination) {
                            PaymentItemView(item: item)
                        }
                        .buttonStyle(NoHighlightButtonStyle())
                    } else {
                        PaymentItemView(item: item)
                    }
                }

                Spacer()
            }
            .padding(.horizontal, 25)
            .padding(.top, 10)
            .navigationTitle("Payment")
        }
    }
}

#Preview {
    PaymentView()
}
