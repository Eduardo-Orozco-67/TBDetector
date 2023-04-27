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
                    Text("¿En tu casa hay alguien")
                        .font(.system(size: 50))
                    Text("que tiene tos con flemas?")
                        .font(.system(size: 50))
                }
                HStack(spacing: 700){
                    Image("Doc6r")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 500)
                }
                HStack (spacing: 40){
                    NavigationLink(destination: EncuestaView()){
                      
                            ZStack{
                                Color.green
                                VStack{
                                    //Color.black.opacity(0.3)
                                    Text("SI").foregroundColor(.white).fontWeight(.bold).font(.system(size: 45))

                                }
                            }.frame(width: 300,height: 80).cornerRadius(30).shadow(radius: 5)
                    }
                    
                    
                    NavigationLink(destination: EncuestaView()){
                      
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
