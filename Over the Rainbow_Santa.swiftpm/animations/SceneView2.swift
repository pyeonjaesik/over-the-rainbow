//
//  File.swift
//
//
//  Created by jaesik pyeon on 2023/03/30.
//

import Foundation
import SwiftUI
import AVFoundation


struct SceneView2: View{
    var index:Int
    
    @State var subIndex:Int = 0
    
    @State var player: AVAudioPlayer?

    func playSound() {
        player?.stop()
        guard let sound = myScenes[index].subtitle[subIndex].1 else {
            return
        }
        let name = String(sound.split(separator: ".")[0])
        let ext = ".\(String(sound.split(separator: ".")[1]))"
        guard let url = Bundle.main.url(forResource: name, withExtension: ext) else {
            return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            
            
            player?.numberOfLoops = 1
            player?.play()
        } catch let error {
             print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }

    }
    
    var body: some View{
        ZStack{
            if myScenes[index].type == .image{
                Image(myScenes[index].imageName).frame(width: UIScreen.main.bounds.size.width ,height: UIScreen.main.bounds.size.height)
            }else{
                GIFImage(name: myScenes[index].imageName).frame(width: UIScreen.main.bounds.size.width ,height: UIScreen.main.bounds.size.height)
            }
            VStack{
                Spacer()
                if myScenes[index].subtitle[subIndex].0 != nil{
                    Image(myScenes[index].subtitle[subIndex].0!)
                        .offset(y:-64)
                }
            }
            HStack{
                Button{
                    // do something
                    if subIndex != 0{
                        subIndex -= subIndex == 0 ? 0 : 1
                        self.playSound()
                    }
                }label :{
                    Rectangle()
                        .fill(Color.transparent)
                }
                Button{
                    if subIndex != myScenes[index].subtitle.count-1{
                        subIndex += myScenes[index].subtitle.count-1  == subIndex ? 0 : 1
                        self.playSound()
                    }
                }label :{
                    Rectangle()
                        .fill(Color.transparent)
                }
            }
        }.background(.black)
        .onAppear{
            self.playSound()
        }
    }
}
