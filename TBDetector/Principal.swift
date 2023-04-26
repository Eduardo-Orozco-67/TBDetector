
import SwiftUI

struct Principal: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.Celeste
                
                VStack{
                    HStack{
                        
                        Image("logoTB2-sinfondo")
                            .resizable()
                            .frame(width: 100, height: 100)
                        Spacer()
                        Text("TBDetector")
                            .font(.custom("Impact", fixedSize: 60))
                            .foregroundColor(.black)
                        Spacer()
                        Image("logoTB2-sinfondo")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    
                    HStack{
                        
                        Image("Doctores1")
                            .resizable()
                            .frame(width: 400, height: 400)
                        //Spacer(20)
                            .padding(20)
                        HStack{
                            Color.Rosa
                                .frame(width: 600, height: 400)
                                .cornerRadius(30.0)
                                .opacity(0.70)
                            
                            HStack{
                                
                            }
                        }
                        
                        
                    }
                    
                    
                    
                }
                
            }
            .ignoresSafeArea()
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Principal_Previews: PreviewProvider {
    static var previews: some View {
        Principal()
    }
}
