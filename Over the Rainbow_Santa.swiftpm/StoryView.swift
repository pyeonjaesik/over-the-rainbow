//
//  StoryView.swift
//  Over the Rainbow
//
//  Created by jaesik pyeon on 2023/03/28.
//

import Foundation
import SwiftUI


struct StoryView: View {
    //@Environment(\.dismiss) var dismiss
    
    // index number for scene
    @State var index: Int = 0
    
    // text animation
    @State private var text: String = ""
    
    
    
    var body: some View {
        ZStack {
            //Color.primary.edgesIgnoringSafeArea(.all)
            
            Image(myScenes[index].imageNames)
            
            HStack{
                
                // prev Button
                Button{
                    // do something
                    if(self.index == 0){
                        self.index = 0
                    }else{
                        self.index -= 1
                    }
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
                }label :{
                    Image("next")
                }
            }
            
            VStack{
                Spacer()
                Text(myScenes[index].subtitle)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .offset(y:-48)
                    .font(.system(size: 50))
                
                /*Button("Dismiss Modal") {
                 dismiss()}*/
                
                
            }
            
        }
    }
                
                
                
    struct Previews_StoryView_Previews: PreviewProvider {
        static var previews: some View {
            StoryView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)")).previewInterfaceOrientation(.landscapeRight)
        }
    }
}

