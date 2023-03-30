//
//  File.swift
//  
//
//  Created by jaesik pyeon on 2023/03/30.
//

import Foundation
import SwiftUI
import AVKit

struct TheEndView: View{

    @State var player = AVPlayer()

    var body: some View {
        ZStack{
            VideoPlayer(player: player)
                .frame(width: UIScreen.main.bounds.size.width ,height: UIScreen.main.bounds.size.height)
                .background(.black)
                .onAppear() {
                    guard let url = Bundle.main.url(forResource: "theEnd",
                                                        withExtension: "mp4") else {return}
                    player = AVPlayer(url: url)
                    player.play()
                }
            Rectangle().fill(Color.transparent)
        }

    }
}
