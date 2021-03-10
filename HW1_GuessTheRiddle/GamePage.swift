//
//  GamePage.swift
//  HW1_GuessTheRiddle
//
//  Created by 葉之霆 on 2021/3/8.
//

import SwiftUI

struct QA{
    var question: String
    var answer1: String
    var answer2: String
    var answer3: String
    var AC: String
}

var QAs = [
    QA(question: "通常讀完海洋大學需要多久？", answer1: "四年", answer2: "一秒鐘", answer3: "五年", AC: "一秒鐘"),
    QA(question: "什麼東西一天過去，脫件衣裳，一年過去，全身脫光？", answer1: "變態", answer2: "蛇", answer3: "日曆", AC: "日曆"),
    QA(question: "誰端火鍋會跌倒？", answer1: "統神", answer2: "國動", answer3: "Toyz", AC: "統神"),
    QA(question: "誰的醫學觀念不是對的？", answer1: "醫生", answer2: "愛莉莎莎", answer3: "柯文哲", AC: "愛莉莎莎"),
    QA(question: "小孩都看什麼？", answer1: "中天新聞", answer2: "天竺鼠車車", answer3: "鬼滅之刃", AC: "鬼滅之刃"),
    QA(question: "大人都看什麼？", answer1: "天竺鼠車車", answer2: "精靈寶可夢", answer3: "鬼滅之刃", AC: "天竺鼠車車"),
    QA(question: "誰不是同性戀？", answer1: "大雄", answer2: "小夫", answer3: "胖虎", AC: "大雄"),
    QA(question: "地層下陷 — 猜一地名", answer1: "深坑", answer2: "萬芳", answer3: "內湖", AC: "深坑"),
    QA(question: "蚊子不叮哪一種動物?", answer1: "凱蒂貓", answer2: "布丁狗", answer3: "美樂蒂", AC: "布丁狗"),
    QA(question: "誰最會被性騷擾？", answer1: "豆花妹", answer2: "雞排妹", answer3: "辣台妹", AC: "雞排妹"),
    QA(question: "台灣史上第一個被罷免的市長是誰？", answer1: "郝龍斌", answer2: "朱立倫", answer3: "韓國瑜", AC: "韓國瑜"),
    QA(question: "海大哪個系沒有系館", answer1: "電機", answer2: "文創", answer3: "資工", AC: "資工")
]

struct GamePage: View {
    @State var Quiz = QAs.randomElement()!
    @State private var score = 0
    @State var contentNum = 1
    @State private var isShowingDetailView = false
    @State private var ShowSecondPage = false
    var GamePageTitle = "Gaming"
    var body: some View {
        NavigationView{
            ZStack{
                Image("background_GamePage")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea( .all)
                VStack(alignment: .center, spacing: nil){
                    Text("你的分數：\(score)  總分：100")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    Text("第\(contentNum)題")
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                    Text(Quiz.question)
                        .frame(width: 300, height: 200)
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                    Button(action: {
                        if contentNum == 10{
                            isShowingDetailView = true
                            ShowSecondPage = true
                        }
                        if Quiz.answer1 == Quiz.AC{
                            score += 10
                            contentNum += 1
                            Quiz = QAs.randomElement()!
                        }
                        else{
                            contentNum += 1
                            Quiz = QAs.randomElement()!
                        }
                    }, label: {
                        Text(Quiz.answer1)
                            .font(.system(size: 30))
                            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment:.center)
                            .foregroundColor(.white)
                            .background(Color.init(red: 0.2, green: 0.8, blue: 0.9))
                            .cornerRadius(20)
                    })
                    Button(action: {
                        if contentNum == 10{
                            isShowingDetailView = true
                            ShowSecondPage = true
                        }
                        if Quiz.answer2 == Quiz.AC{
                            score += 10
                            contentNum += 1
                            Quiz = QAs.randomElement()!
                        }
                        else{
                            contentNum += 1
                            Quiz = QAs.randomElement()!
                        }
                    }, label: {
                        Text(Quiz.answer2)
                            .font(.system(size: 35))
                            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment:.center)
                            .foregroundColor(.white)
                            .background(Color.init(red: 0.9, green: 0.6, blue: 0.7))
                            .cornerRadius(20)
                    })
                    Button(action: {
                        if contentNum == 10{
                            isShowingDetailView = true
                            ShowSecondPage = true
                        }
                        if Quiz.answer3 == Quiz.AC{
                            score += 10
                            contentNum += 1
                            Quiz = QAs.randomElement()!
                        }
                        else{
                            contentNum += 1
                            Quiz = QAs.randomElement()!
                        }
                    }, label: {
                        Text(Quiz.answer3)
                            .font(.system(size: 35))
                            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment:.center)
                            .foregroundColor(.white)
                            .background(Color.init(red: 0.5, green: 0.4, blue: 0.9))
                            .cornerRadius(20)
                    })
                    NavigationLink(
                        destination: EndPage(score: score),
                        isActive: $isShowingDetailView,
                        label: {
                            EmptyView()
                        })
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct GamePage_Previews: PreviewProvider {
    static var previews: some View {
        GamePage()
    }
}
