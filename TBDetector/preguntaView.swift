//
//  preguntaView.swift
//  TBDetector
//
//  Created by ADMIN UNACH on 26/04/23.
//
import SwiftUI

struct preguntaView: View {
    var body: some View {
        ZStack{
            Color.Celeste
            
            VStack(spacing: 40){
                VStack{
                    ZStack{
                        Color.AguaMarina
                            .frame(width: 1150, height: 110)
                            .cornerRadius(30.0)
                            .opacity(0.50)
                        
                        Text("¿En tu casa hay alguien que tiene tos con flemas?")
                            .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                            .foregroundColor(Color.white)

                    }
                    
                }
                HStack{
                    Image("Doc6r")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400)
                }
                HStack {
                    NavigationLink(destination: EncuestaView()){
                        
                        ZStack{
                            Color.green
                            VStack{
                            
                                Text("SI").foregroundColor(.white).fontWeight(.bold).font(.system(size: 45))
                                
                            }
                        }.frame(width: 300,height: 80).cornerRadius(30).shadow(radius: 5)
                    }
                    
                    
                    NavigationLink(destination: SaludableView()){
                        
                        ZStack{
                            Color.red
                            VStack{
                                //Color.black.opacity(0.3)
                                Text("NO").foregroundColor(.white).fontWeight(.bold).font(.system(size: 45))
                                
                            }
                        }.frame(width: 300,height: 80).cornerRadius(30).shadow(radius: 5)
                    }                }
                
            }
        }.ignoresSafeArea()
    }
}

struct preguntaView_Previews: PreviewProvider {
    static var previews: some View {
        preguntaView()
    }
}
