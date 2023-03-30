//
//  File.swift
//  
//
//  Created by jaesik pyeon on 2023/03/30.
//

import Foundation
import SwiftUI
import AVKit

struct AnimationView1: View{
    @State var ShapeColor: Color = .blue
    @State var ShapeOpacity: Double = 1
    
    @State var isAnimating: Bool = false
    
    var index:Int
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "333",
                                                               withExtension: "mp4")!))
    }
}
