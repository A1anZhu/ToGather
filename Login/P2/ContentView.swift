//
//  ContentView.swift
//  P2
//
//  Created by Matt on 2021/10/4.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var password = ""
    @State private var selectedOption = "Event Host"
    let options = ["Event Host", "Event Participant"]
    var body: some View {
        
        NavigationView {
            ZStack {
                RadialGradient(gradient: Gradient(colors: [.blue,.black]), center: .center, startRadius: 20, endRadius: 200)
                VStack(spacing: 20){
                    
                    // Color.red.frame(width: 200, height: 200)
        //            LinearGradient(gradient: Gradient(colors: [.white,.black]), startPoint: .top, endPoint: .bottom)
        //            RadialGradient(gradient: Gradient(colors: [.blue,.black]), center: .center, startRadius: 20, endRadius: 200)
                    Text("ToGather")
                        .padding()
                        .background(Color.white)
                    
                    TextField("Enter your Username", text: $name)
                        .background(Color.white)
                    TextField("Enter your password", text: $password)
                        .background(Color.white)
                    Picker("Select your identity", selection: $selectedOption) {
                            ForEach(0 ..< options.count) {
                                Text(self.options[$0])
                            }
                    }
                    .background(Color.white)
                    NavigationLink(destination: EventScroll()) {
                        Image(systemName: "pencil")
                        Text("Login")
                    }
                    .background(Color.white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
