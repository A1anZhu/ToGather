//
//  Registration.swift
//  P2
//
//  Created by Matt on 2021/10/12.
//

import SwiftUI

struct Registration: View {
    @State private var attendDate = Date()
    @State private var attendTime = 8.0
    @State private var numberOfFriend = 1
    @State private var description = ""
    
    var body: some View {
        

        NavigationView {
            VStack {
                Text("When do you plan to attend the event?")
                    .font(.headline)
                DatePicker("Please enter a date", selection: $attendDate, in: Date()...)
                    .labelsHidden()
                
//                HStack{
//                    Text("How long do you plan to attend the event?")
//                        .font(.headline)
//                    Spacer()
//                }
                
                Text("How long do you plan to attend the event?")
                    .font(.headline)
                
                Stepper(value: $attendTime, in: 0...24, step: 0.25) {
                    Text("\(attendTime, specifier: "%g") hours")
                }
                
                Text("How many friends will you bring?")
                    .font(.headline)
                
                Stepper(value: $numberOfFriend, in: 1...50, step: 1) {
                    if numberOfFriend == 1{
                        Text("1 friend")
                    } else {
                        Text("\(numberOfFriend) friends")
                    }
                }
            
                TextField("A brief discription", text: $description)
                    .background(Color.white)
                    .foregroundColor(Color.blue)
                    .padding()
                
                Button(action: {
                    print("Submit Successfully")
                }) {
                    Image(systemName: "pencil")
                    Text("Submit")
                }
                .background(Color.white)
                
            }
            .navigationBarTitle("Registration Form")
//            .navigationBarItems(trailing: Button(action: calculateBedTime) {
//                    Text("Calculate")
//                }
//            )
        }
    }
    
//    func calculateBedTime() {
//
//    }
    
    
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
