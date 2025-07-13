//
//  View.swift
//  CUBC
//
//  Created by JoshipTy on 13/7/25.
//

import SwiftUI

extension View {
    func sectionTitleStyle() -> some View {
        self
            .foregroundColor(.gray)
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}
