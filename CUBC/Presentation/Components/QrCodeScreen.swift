//
//  QrCodeScreen.swift
//  CUBC
//
//  Created by JoshipTy on 12/7/25.
//

import SwiftUI

struct QrCodeScreen: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Text("QR Code Screening")
                        .foregroundStyle(.white)
                        .bold()
                    Spacer()
                }
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "multiply")
                            .foregroundStyle(.white)
                            .bold()
                    }

                }
            }
            .background(.black)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    QrCodeScreen()
}
