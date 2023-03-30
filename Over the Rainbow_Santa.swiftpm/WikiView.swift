//
//  WikiView.swift
//  Over the Rainbow
//
//  Created by jaesik pyeon on 2023/03/28.
//

import Foundation
import SwiftUI

struct WikiView:View{
    
    @State private var isPresented = false
    
    var body: some View{
        ScrollView{
            ZStack{
                Image("wiki")
                Button{
                    isPresented = true
                }label: {
                    Rectangle()
                        .fill(Color.transparent)
                        .frame(width: 1000,height: 616)
                        .position(x:500,y:2753+313)
                        .background(Color.transparent)
                }
            }
        }.navigationBarBackButtonHidden(false)
            .fullScreenCover(isPresented: $isPresented, content: {StoryView()})
    }
}


