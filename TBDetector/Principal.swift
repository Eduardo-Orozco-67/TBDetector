
import SwiftUI

struct Principal: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.Celeste
                VStack{
                    ZStack{
                        Color.AguaMarina
                            .frame(width: 1150, height: 130)
                            .cornerRadius(30.0)
                            .opacity(0.50)
                        HStack{
                            
                            Image("logoTB2-sinfondo")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .padding(.trailing, 300)
                            Text("TB")
                                .font(.custom("Impact", fixedSize: 60))
                                .foregroundColor(Color.Rojo)
                            Text("Detector")
                                .font(.custom("Impact", fixedSize: 60))
                                .foregroundColor(Color.black)
                            
                            Image("logoTB2-sinfondo")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .padding(.leading, 300)
                        }
                    }
                    .padding(.bottom,30)
                    HStack{
                        VStack{
                            Image("Doctores1")
                                .resizable()
                                .frame(width: 480, height: 480)
                            
                            Text("Por una mejor calidad de vida").foregroundColor(Color.AzulMarino).fontWeight(.light)
                                .font(Font.custom("Arial Rounded MT Bold", size: 26))
                            
                        }
                        //Spacer(20)
                            .padding(20)
                        ZStack{
                            Color.AguaMarina
                                .frame(width: 600, height: 500)
                                .cornerRadius(30.0)
                                .opacity(0.35)
                            
                            HStack(alignment:.top,spacing: 30){
                                NavigationLink(destination: MenuView()){
                                    ZStack{
                                        Color.Rosa
                                            .opacity(0.70)
                                        VStack{
                                            Image("Diagnostico").resizable().frame(width: 240,height: 230)
                                            
                                            Text("Diagnóstico").foregroundColor(.white).fontWeight(.medium).font(.system(size: 35))
                                                .font(Font.custom("Arial Rounded MT Bold", size: 26))
                                            
                                        }
                                    }.frame(width: 240,height: 400).cornerRadius(10).shadow(radius: 5)
                                    //Fin del Zstack de la tarjeta
                                    
                                }//Fin del NavigationLink
                                
                                NavigationLink(destination: MenuView()){
                                    ZStack{
                                        Color.Rosa
                                            .opacity(0.70)
                                        VStack{
                                            Image("Información").resizable().frame(width: 230,height: 300)
                                            //Color.black.opacity(0.3)
                                            Text("Información").foregroundColor(.white).fontWeight(.medium).font(.system(size: 35))
                                                .font(Font.custom("Arial Rounded MT Bold", size: 26))
                                                
                                            
                                        }
                                    }.frame(width: 240,height: 400).cornerRadius(10).shadow(radius: 5)
                                    //Fin del Zstack de la tarjeta
                                    
                                }//Fin del NavigationLink
                                
                            }
                        }
                        
                        
                    }
                    
                    
                    
                }
                
            }
            .ignoresSafeArea()
        }//Fin del NV
        
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct Principal_Previews: PreviewProvider {
    static var previews: some View {
        Principal()
    }
}
