//
//  GetStartedButton.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/6/23.
//

import SwiftUI

struct GetStartedButton: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action: {
            UserDefaults.standard.setValue(false, forKey: "showLaunchScreen")
            dismiss()
        })
        {
            Text("Get Started")
                .font(.title3)

                .padding(EdgeInsets(top: 15, leading: 60, bottom: 15, trailing: 60))
                .foregroundColor(Color.black)
                .bold()
        }
        .background(Color.primeBeige1)
        .cornerRadius(100)
    }
}

#Preview {
    GetStartedButton()
}
