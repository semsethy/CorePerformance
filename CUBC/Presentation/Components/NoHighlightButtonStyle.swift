//
//  NoHighlightButtonStyle.swift
//  CUBC
//
//  Created by JoshipTy on 12/7/25.
//

import SwiftUI

struct NoHighlightButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
