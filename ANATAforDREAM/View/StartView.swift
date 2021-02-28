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
    @Binding var isPresented: Bool
    
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
                        .fontWeight(.bold)
                        .kerning(2)
                        .foregroundColor(.black)
                        .padding(.vertical, 1)
                    Text("サウンドをオンにしてお楽しみください。")
                        .font(.callout)
                        .fontWeight(.bold)
                        .kerning(2)
                        .foregroundColor(.black)
                        .padding(.vertical, 1)
                }
                .padding(.vertical, 5)
                
                VStack {
                    Text("コンテンツ内ではブラウザの")
                        .font(.callout)
                        .fontWeight(.bold)
                        .kerning(2)
                        .foregroundColor(.black)
                        .padding(.vertical, 1)
                    Text("「更新」「戻る」機能を使用しないでください。")
                        .font(.callout)
                        .fontWeight(.bold)
                        .kerning(2)
                        .foregroundColor(.black)
                        .padding(.vertical, 1)
                }.padding(.vertical, 5)
                
                // Start button
                Button(action: {
                    isPresented.toggle()
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
            StartView(isPresented: .constant(false))
                .environment(\.colorScheme, .light)
            StartView(isPresented: .constant(false))
                .environment(\.colorScheme, .dark)
        }
    }
}
