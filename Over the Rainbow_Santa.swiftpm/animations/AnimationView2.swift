//
//  File.swift
//
//
//  Created by jaesik pyeon on 2023/03/30.
//

import Foundation
import SwiftUI

struct AnimationView2: View{
    @State var ShapeColor: Color = .red
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

//
//  RainbowView.swift
//  Over the Rainbow
//
//  Created by 하명관 on 2023/03/29.
//
import SwiftUI

struct RainBow: View {
    
    // Animation Properties
    @State var startAnimation = false   // 애니메이션 시작 할때 쓰이는 내부 함수 보우 애니메이션과 다르게 스타트애니메이션은 남아있지가않음. 물어볼것
    @State var bowAnimation = false // 보우애니메이션과 스타트애니메이션의 차이를 어디서 정했는지 모르겠음
    
    // Glow Animation...
    @State var glow = false // 반짝이게 하는 함수
    
    // 이미지 추가
    @State var showPlus = false // 플러스 보여주고
    @State var plusBGGlow = false // 플러스 뒤에 반짝이
    
    @State var isFished = false // 스플래쉬 화면 끝날때 다른 화면으로 넘어가기
    
    
    
    var body: some View {
        
        // for safety
        HStack{
            
            if !isFished{ // isFinshed가 거짓일때 실행
                
                ZStack{ // x , y , z 중 z에 위치
                    
                    Color("bg")
                        .ignoresSafeArea()
                    
                    GeometryReader{proxy in
                        
                        
                        let size = proxy.size
                        
                        ZStack{
                            Circle() // 원만듬
                            // Trimming
                                .trim(from: 0.07, to: bowAnimation ? 0.52 : 0) //from 시작값 , to는 끝값 trim은 일부만 나타나게할수있다 true면 0.5 거짓이면 0
                                .stroke( // 원을 선으로 만들어주는것
                                    
                                    // Gradient.. 그라디언트 색깔 그라데이션효과
                                    .linearGradient(.init(colors: [ //선형 그레이더는 축을 따라 그라디언트 기능을 가지고 있으며 색 공간, 시작 및 끝점을 사용자 정의 할 수 있습니다.
                                        
                                        Color("Red")
                                        
                                                                  ]), startPoint: .leading, endPoint: .trailing) // 시작점은 왼쪽에서 오른쪽으로
                                    ,style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round) // stroke스타일설정
                                )
                                .frame(width: size.width / 1, height: size.width / 1.5) //크기
                                .rotationEffect(.init(degrees: -200)) // stroke와 원들 모두 몇도를 회전할것인지 설정 -
                            
                            Circle() // 원만듬
                            // Trimming
                                .trim(from: 0.1, to: bowAnimation ? 0.52 : 0) //from 시작값 , to는 끝값 trim은 일부만 나타나게할수있다 true면 0.5 거짓이면 0
                                .stroke( // 원을 선으로 만들어주는것
                                    
                                    // Gradient.. 그라디언트 색깔 그라데이션효과
                                    .linearGradient(.init(colors: [ //선형 그레이더는 축을 따라 그라디언트 기능을 가지고 있으며 색 공간, 시작 및 끝점을 사용자 정의 할 수 있습니다.
                                        
                                        Color("Orange")
                                        
                                                                  ]), startPoint: .leading, endPoint: .trailing) // 시작점은 왼쪽에서 오른쪽으로
                                    ,style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round) // stroke스타일설정
                                )
                                .frame(width: size.width / 1.65, height: size.width / 1.5) //크기
                                .rotationEffect(.init(degrees: -200)) // stroke와 원들 모두 몇도를 회전할것인지 설정 -
                            
                            Circle() // 원만듬
                            // Trimming
                                .trim(from: 0.1, to: bowAnimation ? 0.52 : 0) //from 시작값 , to는 끝값 trim은 일부만 나타나게할수있다 true면 0.5 거짓이면 0
                                .stroke( // 원을 선으로 만들어주는것
                                    
                                    // Gradient.. 그라디언트 색깔 그라데이션효과
                                    .linearGradient(.init(colors: [ //선형 그레이더는 축을 따라 그라디언트 기능을 가지고 있으며 색 공간, 시작 및 끝점을 사용자 정의 할 수 있습니다.
                                        
                                        Color("Yellow")
                                        
                                                                  ]), startPoint: .leading, endPoint: .trailing) // 시작점은 왼쪽에서 오른쪽으로
                                    ,style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round) // stroke스타일설정
                                )
                                .frame(width: size.width / 1.85, height: size.width / 1.5) //크기
                                .rotationEffect(.init(degrees: -200)) // stroke와 원들 모두 몇도를 회전할것인지 설정 -
                        }
                        .offset(y:250) // y 축 지정
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        
                        ZStack{
                            
                            Circle() // 원만듬
                            // Trimming
                                .trim(from: 0.1, to: bowAnimation ? 0.52 : 0) //from 시작값 , to는 끝값 trim은 일부만 나타나게할수있다 true면 0.5 거짓이면 0
                                .stroke( // 원을 선으로 만들어주는것
                                    
                                    // Gradient.. 그라디언트 색깔 그라데이션효과
                                    .linearGradient(.init(colors: [ //선형 그레이더는 축을 따라 그라디언트 기능을 가지고 있으며 색 공간, 시작 및 끝점을 사용자 정의 할 수 있습니다.
                                        
                                        Color("Green")
                                        
                                                                  ]), startPoint: .leading, endPoint: .trailing) // 시작점은 왼쪽에서 오른쪽으로
                                    ,style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round) // stroke스타일설정
                                )
                                .frame(width: size.width / 2.1, height: size.width / 1.5) //크기
                                .rotationEffect(.init(degrees: -200)) // stroke와 원들 모두 몇도를 회전할것인지 설정 -
                            
                            Circle() // 원만듬
                            // Trimming
                                .trim(from: 0.1, to: bowAnimation ? 0.52 : 0) //from 시작값 , to는 끝값 trim은 일부만 나타나게할수있다 true면 0.5 거짓이면 0
                                .stroke( // 원을 선으로 만들어주는것
                                    
                                    // Gradient.. 그라디언트 색깔 그라데이션효과
                                    .linearGradient(.init(colors: [ //선형 그레이더는 축을 따라 그라디언트 기능을 가지고 있으며 색 공간, 시작 및 끝점을 사용자 정의 할 수 있습니다.
                                        
                                        Color("Blue")
                                        
                                                                  ]), startPoint: .leading, endPoint: .trailing) // 시작점은 왼쪽에서 오른쪽으로
                                    ,style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round) // stroke스타일설정
                                )
                                .frame(width: size.width / 2.4, height: size.width / 1.5) //크기
                                .rotationEffect(.init(degrees: -200)) // stroke와 원들 모두 몇도를 회전할것인지 설정 -
                            
                            
                            
                            //RainBow..
                            Circle() // 원만듬
                            // Trimming
                                .trim(from: 0.1, to: bowAnimation ? 0.52 : 0) //from 시작값 , to는 끝값 trim은 일부만 나타나게할수있다 true면 0.5 거짓이면 0
                                .stroke( // 원을 선으로 만들어주는것
                                    
                                    // Gradient.. 그라디언트 색깔 그라데이션효과
                                    .linearGradient(.init(colors: [ //선형 그레이더는 축을 따라 그라디언트 기능을 가지고 있으며 색 공간, 시작 및 끝점을 사용자 정의 할 수 있습니다.
                                        
                                        Color("Purple")
                                        
                                                                  ]), startPoint: .leading, endPoint: .trailing) // 시작점은 왼쪽에서 오른쪽으로
                                    ,style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round) // stroke스타일설정
                                )
                                .frame(width: size.width / 2.8, height: size.width / 1.5) //크기
                            
                                .overlay( //
                                    
                                    // Glow Circle...  반짝이는 원
                                    Image("brush") // 선의 시작점을 나타내는원
                                        .frame(width: 6, height: 6) // 넓이 높이 지정
                                        .blur(radius: 2.5) // 불투명처리 블러 철
                                    // Moving towards left..
                                        .offset(x: (size.width / 3) / 2) //원이 어디 위치해야 되는지 설정
                                    // moving towards bow..
                                        .rotationEffect(.init(degrees: bowAnimation ? 180 : 0)) // 180도만 회전시키는것 반짝이는원을
                                        .opacity(startAnimation ? 1 : 0) // Start를 사용하면 끝에 와서 사라지고 보우를 사용하면 계속남아있음 차이점을 모름
                                )
                                .rotationEffect(.init(degrees: -200)) // stroke와 원들 모두 몇도를 회전할것인지 설정 -
                            
                            
                            HStack {

                                Image("Cloud")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 380, height: 280)
                                
                                Spacer()
                                
                                Image("Cloud")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 380, height: 280)
                                    .scaleEffect(showPlus ? 1 : 0)
                            }
                            .padding(.horizontal,150)
                            .padding(.bottom,60)
                        }
                        .offset(y:250) // y 축 지정
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        //zstack의 위치조정
                        
                    }
                }
                .onAppear { //View 가 나타날 때  실행될 acttion을 추가 특정항목을 나타낼수가있음.
                    
                    // Delaying 0.3second 디스페치를 사용하면 onappear로 불러오는것을 지연시킬수있음.
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3)
                    {
                        
                        withAnimation(.linear(duration: 2)){
                            bowAnimation.toggle()
                            // duration :선이 그려지는시간 2초로 지정 withAnimation을 사용하면 모든 코드에 영향을줌 .linear은 일정한속도
                            
                        }
                        
                        // Glow Animation 반짝이는 애니메이션
                        withAnimation(.linear(duration: 0.5).repeatForever(autoreverses: true)){
                            glow.toggle()
                            // withAnimation:모든 glow에 적용 .linear: 일정한속도, duration: 0.5초동안 반짝거리기 . repeatforever(autoreverses:true)끝없이 반복
                            
                        }
                        // Since we dont need glow from bottom of disney so delaying animation
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            
                            withAnimation(.spring()){
                                startAnimation.toggle()
                                // 스프링처럼 보여줬다가 안보여줬다
                            }
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            
                            withAnimation(.spring()){
                                showPlus.toggle()
                                startAnimation.toggle()
                            }
                        }
                        
                        
                    }
                }
            }
        }.background(.blue)
    }
}

struct RainBow_Previews: PreviewProvider {
    static var previews: some View {
        RainBow()
    }
}
