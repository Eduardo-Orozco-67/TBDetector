
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
                        ZStack{
                            Color.AzulMarino
                                .frame(width: 600, height: 500)
                                .cornerRadius(30.0)
                                .opacity(0.35)
                            
                            HStack(alignment:.top,spacing: 30){
                                NavigationLink(destination: MenuView()){
                                    ZStack{
                                        Color.pink
                                        VStack{
                                            Image("Diagnostico").resizable().frame(width: 200,height: 300)
                                            //Color.black.opacity(0.3)
                                            Text("Diagnostico").foregroundColor(.white).fontWeight(.light).font(.system(size: 25))
                                            
                                        }
                                    }.frame(width: 220,height: 400).cornerRadius(10).shadow(radius: 5)
                                    //Fin del Zstack de la tarjeta
                                    
                                }//Fin del NavigationLink
                                
                                NavigationLink(destination: MenuView()){
                                    ZStack{
                                        Color.pink
                                        VStack{
                                            Image("Información").resizable().frame(width: 200,height: 300)
                                            //Color.black.opacity(0.3)
                                            Text("Información").foregroundColor(.white).fontWeight(.light).font(.system(size: 25))
                                            
                                        }
                                    }.frame(width: 220,height: 400).cornerRadius(10).shadow(radius: 5)
                                    //Fin del Zstack de la tarjeta
                                    
                                }//Fin del NavigationLink
                                
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
