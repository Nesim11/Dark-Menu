//
//  ContentView.swift
//  Dark Menu
//
//  Created by Nesim Alma on 10.07.2021.
//

import SwiftUI

struct DarkMenuView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        VStack{
            Picker("Mode" , selection: $isDarkMode) {
                Text("Light")
                    .tag(false)
                Text("Dark")
                    .tag(true)
            }.pickerStyle(SegmentedPickerStyle())
            .padding()
            List(0..<5, id: \.self) { num in
                NavigationLink(destination: Text("\(num)")) {
                Text("\(num)")
                }
                    
            }
        }.navigationTitle("Dark Menu")
    }
}

struct DarkMenuView_Previews: PreviewProvider {
    static var previews: some View {
        DarkMenuView()
    }
}
