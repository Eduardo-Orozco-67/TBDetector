//
//  MenuView.swift
//  TBDetector
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        
        ZStack{
            //Color de fondo
            
            Color.black.opacity(0.5)
            //---------------------------
            //Seccion del titulo
            VStack(spacing: 15){
                VStack(alignment: .leading, spacing: 12){
                    Text("Select a city").font(.system(size: 60)).foregroundColor(.white).shadow(radius: 10)
                }.padding(.top,70).padding(.bottom,50)
                //Mostramos el carrusel-----------------
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment:.top,spacing: 30){
                        //Card de Informacion
                        NavigationLink(destination: InfoView()){
                            ZStack{
                                Color.pink
                                VStack{
                                    Image("Doc3").resizable().frame(width: 100,height: 300)
                                    //Color.black.opacity(0.3)
                                    Text("Informacion").foregroundColor(.white).fontWeight(.light).font(.system(size: 25))

                                }
                            }.frame(width: 420,height: 500).cornerRadius(10).shadow(radius: 5)
                            //Fin del Zstack de la tarjeta
                            
                        }//Fin del NavigationLink
                        
                        //_______Card de diagnostico
                        NavigationLink(destination: InfoView()){
                            ZStack{
                                Color.pink
                                VStack{
                                    Image("Doc4").resizable().frame(width: 100,height: 300)
                                    //Color.black.opacity(0.3)
                                    Text("Informacion").foregroundColor(.white).fontWeight(.light).font(.system(size: 25))

                                }
                            }.frame(width: 420,height: 500).cornerRadius(10).shadow(radius: 5)
                            //Fin del Zstack de la tarjeta
                            
                        }//Fin del NavigationLink
                        
                        
                        //___Card de Igene y salud
                        NavigationLink(destination: InfoView()){
                            ZStack{
                                Color.pink
                                VStack{
                                    Image("Doc3").resizable().frame(width: 100,height: 300)
                                    //Color.black.opacity(0.3)
                                    Text("Informacion").foregroundColor(.white).fontWeight(.light).font(.system(size: 25))

                                }
                            }.frame(width: 420,height: 500).cornerRadius(10).shadow(radius: 5)
                            //Fin del Zstack de la tarjeta
                            
                        }//Fin del NavigationLink
                        
                    }.padding(.leading,20)//Fin del Hstack
                }//Fin del ScrollView
            }.frame(maxHeight: .infinity, alignment: .top)
            //Fin del VStack
            
        }.ignoresSafeArea(.all).background(.black)
        //Fin del ZStack
    }
}
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
