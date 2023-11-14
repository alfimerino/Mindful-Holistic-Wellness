//
//  SheetDismissButton.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/14/23.
//

import SwiftUI

struct SheetDismissButton: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        }label: {
            Image(systemName: "chevron.compact.down")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(height: 20)
        }.padding(.top)
    }
}

#Preview {
    SheetDismissButton()
}
