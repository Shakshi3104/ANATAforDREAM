//
//  SwiftUIView.swift
//  ANATAforDREAM
//
//  Created by MacBook Pro on 2021/02/28.
//

import SwiftUI
import Neumorphic

struct StartView: View {
    @State var screen = UIScreen.main.bounds.size
    
    var body: some View {
        ZStack {
            // set background color
            Color("AnataForDreamColor").edgesIgnoringSafeArea(.all)
            
            VStack {
                // ANATA for DREAM logo
                Image("AnataForDreamLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: screen.width * 0.5)
                
                // Speaker symbol
                ZStack {
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 5))
                        .fill(Color.Neumorphic.main).softOuterShadow()
                        .frame(width: screen.width * 0.5, height: screen.width * 0.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.vertical)
                    
                    Image(systemName: "speaker.wave.3.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: screen.width * 0.25)
                        .foregroundColor(.gray)
                        .shadow(radius: 3)
                }
                .padding(.vertical)
                
                // Text
                VStack {
                    Text("このコンテンツは音がでます。")
                        .font(.callout)
                        .foregroundColor(.black)
                    Text("サウンドをオンにしてお楽しみください。")
                        .font(.callout)
                        .foregroundColor(.black)
                }
                .padding(.vertical)
                
                VStack {
                    Text("コンテンツ内ではブラウザの")
                        .font(.callout)
                        .foregroundColor(.black)
                    Text("「更新」「戻る」機能を使用しないでください。")
                        .font(.callout)
                        .foregroundColor(.black)
                }.padding(.vertical)
                
                // Start button
                Button(action: {
                    
                }, label: {
                    Text("はじめる")
                        .fontWeight(.bold)
                        .kerning(2)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 60)
                })
                .softButtonStyle(Capsule(), pressedEffect: .hard)
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartView()
                .environment(\.colorScheme, .light)
            StartView()
                .environment(\.colorScheme, .dark)
        }
    }
}
