
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
                            .padding(.trailing, 300)
                        Text("TBDetector")
                            .font(.custom("Impact", fixedSize: 60))
                            .foregroundColor(.black)
                        
                        Image("logoTB2-sinfondo")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.leading, 300)
                    }
                    
                    HStack{
                        Image("Doctores1")
                            .resizable()
                            .frame(width: 500, height: 500)
                        //Spacer(20)
                            .padding(20)
                        HStack{
                            Color.Rosa
                                .frame(width: 600, height: 500)
                                .cornerRadius(30.0)
                                .opacity(0.55)
                                
                            HStack{
                                //NavigationLink(destination: MainView){
                                //.fill(Color.blue)
                                Text("")
                                .frame(width: 200, height: 200)
                                .shadow(radius: 10)
                                .overlay(
                                    Image("Diagnostico")
                                        .foregroundColor(.white)
                                        .font(.system(size: 70, weight: .bold))
                                    )
                                
                                
                                }
                            //}
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
