//
//  File.swift
//  
//
//  Created by jaesik pyeon on 2023/03/30.
//

import Foundation
import SwiftUI

struct AnimationView1: View{
    @State var ShapeColor: Color = .blue
    @State var ShapeOpacity: Double = 1
    
    @State var isAnimating: Bool = false
    
    var index:Int
    
    var body: some View {
        ZStack {
            Image(myScenes[index].imageName)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
                .offset(x: isAnimating ? 0 : UIScreen.main.bounds.size.width)
                .animation(.easeIn(duration: 1), value: isAnimating)
                
        } //: ZSTACk
        .onAppear(perform: {
            isAnimating = true
        })
    }
}
