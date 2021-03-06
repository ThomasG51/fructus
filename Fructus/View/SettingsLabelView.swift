//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Thomas George on 08/10/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(self.labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: self.labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
