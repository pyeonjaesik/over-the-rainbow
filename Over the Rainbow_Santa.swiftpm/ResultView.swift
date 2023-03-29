//
//  ResultView.swift
//  Over the Rainbow
//
//  Created by jaesik pyeon on 2023/03/28.
//

import Foundation
import SwiftUI
struct ResultView: View {
    
    var body: some View {
        ScrollView{
            ZStack{
                Image("result")
                NavigationLink(destination: WikiView()){
                    Rectangle()
                        .fill(Color.transparent)
                        .frame(width: 944,height: 485)
                        .offset(y:-80)
                        .background(Color.transparent)
                }
            }
        }.navigationBarBackButtonHidden(false)
    }
}

