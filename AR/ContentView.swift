//
//  ContentView.swift
//  AR
//
//  Created by Дэвид Бердников on 27.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Spacer()
            SegmentedPicker()
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
