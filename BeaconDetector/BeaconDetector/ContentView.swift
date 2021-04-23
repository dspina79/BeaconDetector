//
//  ContentView.swift
//  BeaconDetector
//
//  Created by Dave Spina on 4/21/21.
//

import SwiftUI

struct BigText: ViewModifier {
    func body(content: Content) -> some View {
        content
                .font(Font.system(size: 72, design: .rounded))
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView: View {
    @ObservedObject var detector = BeaconDetector()
    
    var body: some View {
        
        if detector.lastDistance == .far {
            Text("Far")
                .modifier(BigText())
                .background(Color.purple)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

        } else if detector.lastDistance == .near {
            Text("Near")
            .modifier(BigText())
                .background(Color.orange)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            
        } else if detector.lastDistance == .immediate {
            Text("HERE HERE HERE")
                .modifier(BigText())
                .background(Color.red)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

        } else {
            Text("Unknown")
            .modifier(BigText())
                .background(Color.gray)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
