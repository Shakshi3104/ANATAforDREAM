//
//  OriginalARASHIView.swift
//  ANATAforDREAM
//
//  Created by Satoshi on 2021/03/02.
//

import SwiftUI

struct OriginalARASHIView: View {
    @State var screen = UIScreen.main.bounds.size
    @State var isPlaying = false
    
    let orangeGradientColor = LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
    
    var body: some View {
        ZStack {
            // set background color
            Color("AnataForDreamColor").edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("A・NA・TA for DREAM")
                    .kerning(1.5)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.Neumorphic.main).softOuterShadow()
                        .frame(width: screen.width * 0.85, height: screen.height * 0.65, alignment: .center)
                    
                    VStack {
                        Text("名前と夢を入力するだけ")
                            .overlay(
                                Rectangle().frame(height: 1).offset(y: 3), alignment: .bottom
                            )
                            .padding(.vertical, 10)
                            
                        
                        VStack {
                            Text("嵐があなたの夢を、")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("A・RA・SHIにのせて歌う！")
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                        .padding(.vertical, 10)
                        
                        // CD Jacket of A・RA・SHI
                        Image("ArashiJacket")
                            .resizable()
                            .scaledToFit()
                            .frame(height: screen.height * 0.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 10)
                        
                        Divider().frame(width: screen.width * 0.8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("A・RA・SHI")
                                    .font(.callout)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 2)
                                    .foregroundColor(.gray)
                                Text("嵐").font(.caption)
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            VStack {
                                ZStack {
                                    Circle()
                                        .fill(orangeGradientColor)
                                        .softOuterShadow()
                                        .frame(width: 50, height: 50, alignment: .center)
                                    
                                    if isPlaying {
                                        Image(systemName: "stop.fill")
                                            .foregroundColor(.white)
                                    }
                                    else {
                                        Image(systemName: "play.fill")
                                            .foregroundColor(.white)
                                    }
                                }.padding(.bottom, 10)
                                .onTapGesture {
                                    self.isPlaying.toggle()
                                }
                                
                                Text("原曲を聴く")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }.offset(y: -30)
                        }
                        .frame(width: screen.width * 0.7, alignment: .center)
                    }
                }
                
                Button(action: {}, label: {
                    Text("NEXT")
                        .fontWeight(.bold)
                        .kerning(2)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 80)
                }).softButtonStyle(Capsule(), pressedEffect: .hard)
                .padding(.top, 10)
                
                
                
            }
        }
    }
}

struct OriginalARASHIView_Previews: PreviewProvider {
    static var previews: some View {
        OriginalARASHIView()
    }
}
