//
//  StoryView.swift
//  Over the Rainbow
//
//  Created by jaesik pyeon on 2023/03/28.
//

import Foundation
import SwiftUI
import UIKit
import AVFoundation

struct StoryView: View {
    //@Environment(\.dismiss) var dismiss
    
    // index number for scene
    @State var index: Int = 0
    
    // text animation
    @State private var text: String = ""
    
    @State var player: AVAudioPlayer?
    
    @State var currentBgm:String = ""
    
    func playSound() {
        guard let bgm = myScenes[index].bgm else {
            currentBgm = ""
            player?.stop()
            return
        }
        guard bgm != currentBgm else { return }
        self.currentBgm = bgm
        guard let url = Bundle.main.url(forResource: bgm, withExtension: ".mp3") else {
            return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.stop()
            
            player?.numberOfLoops = 99
            player?.play()
        } catch let error {
             print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }

    }
    
    var body: some View {
        ZStack {
            if myScenes[index].type != .animation {
                if index%2 == 0{
                    SceneView(index:index)
                }else{
                    SceneView2(index:index)
                }
                
            }else{
                switch myScenes[index].imageName{
                case "#1_1":
                    AnimationView1(index:index)
                case "#1_2":
                    AnimationView2(index:index)
                default:
                    EmptyView()
                }
            }
            HStack{

                // prev Button
                Button{
                    // do something
                    if(self.index == 0){
                        self.index = 0
                    }else{
                        self.index -= 1
                    }
                    self.playSound()
                }label :{
                    Image("prev")
                    
                }
                Spacer()
                // next Button
                Button{
                    // do something
                    if(self.index == myScenes.count - 1){
                        self.index = myScenes.count - 1
                    }else{
                        self.index += 1
                    }
                    self.playSound()
                }label :{
                    Image("next")
                }
            }
        }.onAppear{
            self.playSound()
        }
    }
                

                
    struct Previews_StoryView_Previews: PreviewProvider {
        static var previews: some View {
            StoryView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)")).previewInterfaceOrientation(.landscapeRight)
        }
    }
}
