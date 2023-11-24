//
//  SheetDismissButton.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/14/23.
//

import SwiftUI

struct SheetDismissButton: View {
    var image: String?
    var text: String?
    @Environment (\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        }label: {
            Image(systemName: image ?? "chevron.compact.down")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(height: 20)
            if text != nil {
                Text(text ?? "Back")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
        }.padding(.top)
    }
}

#Preview {
    SheetDismissButton(image: "chevron.compact.left",text: "back")
}
