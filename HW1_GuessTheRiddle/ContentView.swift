//
//  ContentView.swift
//  HW1_GuessTheRiddle
//
//  Created by 葉之霆 on 2021/3/8.
//

import SwiftUI

struct ContentView: View {
    var ContentViewTitle = "Start"
    var body: some View {
        NavigationView{
            ZStack{
                Image("background_ContentView")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea( .all)
                VStack(alignment:.center, spacing:300){
                    Text("猜燈謎")
                        .font(.system(size: 90))
                        .foregroundColor(.white)
                    NavigationLink(
                        destination:GamePage(GamePageTitle: "Gaming")){
                        Text("開始遊戲")
                            .font(.system(size: 30))
                            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment:.center)
                            .foregroundColor(.white)
                            .background(Color.init(red: 0.9, green: 0.3, blue: 0.5))
                            .cornerRadius(40)
                        }.navigationBarBackButtonHidden(true)
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
