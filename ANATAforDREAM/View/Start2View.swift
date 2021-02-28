//
//  Start2View.swift
//  ANATAforDREAM
//
//  Created by MacBook Pro on 2021/02/28.
//

import SwiftUI
import Neumorphic

struct Start2View: View {
    @State var screen = UIScreen.main.bounds.size
    @State var isCheckedJoin = false
    
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
                
                // Arashi image
                ZStack {
                    Circle()
                        .fill(Color.Neumorphic.main).softOuterShadow()
                        .frame(width: screen.width * 0.65, height: screen.width * 0.65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Image("ArashiVisual")
                        .resizable()
                        .scaledToFit()
                        .frame(width: screen.width * 0.6)
                        .clipShape(Circle())
                }
                .padding(.vertical)
                
                // Text
                HStack(alignment: .bottom) {
                    Text("参加・応募規約に同意する")
                        .font(.callout)
                        .fontWeight(.bold)
                        .kerning(2)
                        .foregroundColor(.black)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 3).fill(Color.Neumorphic.main).softOuterShadow()
                            .frame(width: 23, height: 23, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .onTapGesture {
                                self.isCheckedJoin.toggle()
                            }
                        if isCheckedJoin {
                            Image(systemName: "checkmark")
                                .foregroundColor(Color.Neumorphic.secondary)
                        }
                    }
                }
                .padding(.vertical)
                
                // Start button
                Button(action: {
                    
                }, label: {
                    Text("START")
                        .fontWeight(.bold)
                        .kerning(2)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 60)
                })
                .softButtonStyle(Capsule(), pressedEffect: isCheckedJoin ? .hard : .none)
            }
        }
    }
}

struct Start2View_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Start2View()
                .environment(\.colorScheme, .light)
            Start2View()
                .environment(\.colorScheme, .dark)
        }
    }
}
