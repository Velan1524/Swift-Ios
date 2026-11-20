import SwiftUI
import Playgrounds

struct ContentView: View {
    @State private var playerCard = "card11"
    @State private var cpuCard  = "card2"
    @State private var playerScore =  0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-cloth")
            VStack  (spacing: 50){
                Image("logo")
                
                HStack (spacing: 50){
                    Image(playerCard)
                    
                    Image(cpuCard)
           
                
                }
                
                Button{
                    dealCards()
                } label : {
                    Image("button")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200)
                }
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .colorInvert()
                            .padding(.bottom)
                        Text("\(playerScore)")
                            .font(.largeTitle)
                            .colorInvert()
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .colorInvert()
                            .padding(.bottom)
                        Text("\(cpuScore)")
                            .font(.largeTitle)
                            .colorInvert()
                    }
                    Spacer()
                }
            }
            .padding()
        }
        
        
        
    }
    
    private func dealCards(){
        let playerValue = Int.random(in:2...14)
        let cpuValue = Int.random(in: 2...14)
        
        playerCard = "card\(playerValue)"
        cpuCard = "card\(cpuValue)"
        
        if playerValue > cpuValue{
            playerScore += 1
        }else if cpuValue > playerValue{
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
