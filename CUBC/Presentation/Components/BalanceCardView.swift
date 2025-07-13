//
//  BalanceCardView.swift
//  CUBC
//
//  Created by JoshipTy on 7/7/25.
//

import SwiftUI

struct BalanceCardView: View {
    @Binding var showEye: Bool

    var body: some View {
        NavigationLink(destination: {
            PaymentView()
        }, label: {
            ZStack(alignment: .topTrailing) {
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        CurrencyBalanceView(currency: "USD", flag: "usa", amountVisible: showEye)
                        CurrencyBalanceView(currency: "KHR", flag: "khmer", amountVisible: showEye)
                    }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                        .padding(8)
                }
                .padding(18)

                Button {
                    showEye.toggle()
                } label: {
                    Image(systemName: showEye ? "eye.fill" : "eye")
                        .foregroundColor(.gray)
                        .padding(.top, 25)
                        .padding(.trailing, 25)
                }
            }
            .background(Color(UIColor.systemGray6))
            .cornerRadius(18)
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(Color(UIColor.systemGray4), lineWidth: 2)
            )
        })
        .buttonStyle(NoHighlightButtonStyle())
    }
}

private struct CurrencyBalanceView: View {
    let currency: String
    let flag: String
    let amountVisible: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 10) {
                Image(flag)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .clipShape(Circle())
                    .opacity(0.7)
                Text(currency)
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.gray)
            }

            if amountVisible {
                Text("0.00")
                    .font(.system(size: 25, weight: .medium))
                    .foregroundColor(.black)
                    .frame(height: 33)
            } else {
                HStack(spacing: 4) {
                    ForEach(0..<5, id: \.self) { _ in
                        Image("leaf")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .opacity(0.7)
                    }
                }
                .frame(height: 33)
            }
        }
    }
}


//#Preview {
//    BalanceCardView()
//}
