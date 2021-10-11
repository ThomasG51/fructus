//
//  ContentView.swift
//  Fructus
//
//  Created by Thomas George on 29/09/2021.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    
    @State private var isPresentingSettings: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                self.isPresentingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
        }
        .sheet(isPresented: $isPresentingSettings) {
            SettingsView()
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
