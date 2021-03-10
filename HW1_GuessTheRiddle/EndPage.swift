//
//  EndPage.swift
//  HW1_GuessTheRiddle
//
//  Created by 葉之霆 on 2021/3/9.
//

import SwiftUI

struct EndPage: View {
    var EndPageTitle = "End"
    let score: Int
    var body: some View {
        NavigationView{
            ZStack{
                Image("background_EndPage")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea( .all)
                    .navigationBarBackButtonHidden(true)
                VStack(alignment:.center, spacing:100){
                    Text("遊戲結束")
                        .font(.system(size:30))
                        .foregroundColor(.white)
                    Text("最終分數：\(score)")
                        .font(.system(size:30))
                        .foregroundColor(.white)
                    HStack(alignment:.bottom, spacing:nil){
                        NavigationLink(
                            destination:ContentView(ContentViewTitle: "start")){
                            Text("結束遊戲")
                                .font(.system(size: 30))
                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment:.center)
                                .foregroundColor(.black)
                                .background(Color.init(red: 1, green: 1, blue: 1))
                                .cornerRadius(40)
                            }.navigationBarBackButtonHidden(true)
                        NavigationLink(
                            destination:GamePage(GamePageTitle: "gaming")){
                            Text("重新開始")
                                .font(.system(size: 30))
                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment:.center)
                                .foregroundColor(.black)
                                .background(Color.init(red: 1, green: 1, blue: 1))
                                .cornerRadius(40)
                            }.navigationBarBackButtonHidden(true)
                    }
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct EndPage_Previews: PreviewProvider {
    static var previews: some View {
        EndPage(score: 0)
    }
}
