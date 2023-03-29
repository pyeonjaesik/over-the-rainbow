import SwiftUI

struct ContentView: View {
    
    @State var search:String = "Over the rainbow"
    @State private var isActive = false

    var body: some View {
        NavigationView{
            VStack(spacing:48) {
                Image("Apple")
                    .resizable()
                    .frame(width: 306,height: 170)
                
                ZStack(alignment:.leading){
                    TextField("", text: $search,onCommit: {
                        isActive = true

                    })
                        .padding(56)
                        .frame(width: 904,height: 48)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(Color.cgray, lineWidth: 1)
                        )
                    HStack(spacing:16){
                        NavigationLink(destination: ResultView(),isActive: $isActive) {
                            Image("search")
                                .padding(.leading, 16)
                        }

                        Spacer()
                        Image("camera")
                            .padding(.trailing, 21)
                    }.frame(width:904)

                }
            }.offset(y:-20)

        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView().previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
            .previewInterfaceOrientation(.landscapeRight)
    }
}

