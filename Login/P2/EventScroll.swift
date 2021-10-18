//
//  EventScroll.swift
//  P2
//
//  Created by Matt on 2021/10/12.
//

import SwiftUI

struct EventScroll: View {
    var code: Array<Int> = [0]
    var name: Array<String> = ["Spring Festival"]
    var picture: Array<Int> = [0]
    var culture: Array<String> = ["Chinese"]
    var description: Array<String> = ["A fun event"]
    var check_state: Array<Int> = [0]
    var rej_reason: Array<String> = [""]
    
    var body: some View {
        //NavigationView {
            ScrollView {
                VStack {
                    Text("ToGather").foregroundColor(Color.black)
                        .font(Font.largeTitle)
                    Section(header: Text("Chinese")){
                        ForEach(1..<5){index in
                            NavigationLink(destination: Registration()) {
                                Event(code: index,
                                      name: "Spring Festival",
                                      time: Date(),
                                      culture: "Chinese",
                                      description: "A fun event.")
                                    .frame(width: 400, height: 120)
                            }
                        }
                    }
                    Section(header: Text("Korean")) {
                        ForEach(1..<5){index in
                            NavigationLink(destination: Registration()) {
                                Event(code: index,
                                      name: "Spring Festival",
                                      time: Date(),
                                      culture: "Chinese",
                                      description: "A fun event.")
                                    .frame(width: 400, height: 120)
                            }
                        }
                        
                    }
                    
                }
                .foregroundColor(Color.black)
                .padding()
            }
        //}
    }
}

struct Event: View {
    let code: Int
    var name: String
    var time: Date
//    let pic:
    @State var free: Bool = false
    @State var follow: Bool = false
//    let location
    var culture: String
    var description: String
    var check_state: Int = 0
    var rej_reason: String = ""
        
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3).background(
                Image("image-"+String(code))
                    .resizable()
            )
            HStack{
                Text("Event \(code)")
                    .font(Font.body)
                
                    

                if(follow){
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color.red)
                        .onTapGesture {
                            follow = !follow
                        }
                }
                else{
                    Image(systemName: "heart")
                        .onTapGesture {
                        follow = !follow
                        }
                }
                
            }

            
        }
        
    }
    
}

struct EventScroll_Previews: PreviewProvider {
    static var previews: some View {
        EventScroll()
    }
}
