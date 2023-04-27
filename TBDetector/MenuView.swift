
import SwiftUI

struct MenuView: View {

    var body: some View {
        
        ZStack{
            LinearGradient(colors: [Color.Celeste,Color.CelestePlus], startPoint: .top, endPoint: .bottom)
            //Seccion del titulo
            VStack(spacing: 15){
                VStack(alignment: .leading, spacing: 12){
                    Text("Selecciona una opción").font(.system(size: 70)).foregroundColor(.AzulMarino)
                }.padding(.top,70).fontWeight(.heavy).padding(.bottom,50)
                
                //Mostramos el carrusel-----------------
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment:.top,spacing: 30){
                        //Card de Informacion
                        NavigationLink(destination: InfoView()){
                            ZStack{
                                Color.Rosa
                                VStack{
                                    Image("Info").resizable().frame(width: 220,height: 300).shadow(radius: 15)
                                    //Color.black.opacity(0.3)
                                    Text("¿Qué es la tuberculosis?").foregroundColor(.white).fontWeight(.bold).font(.system(size: 45))

                                }
                            }.frame(width: 480,height: 500).cornerRadius(30).shadow(radius: 5)
                            //Fin del Zstack de la tarjeta
                            
                        }//Fin del NavigationLink
                        
                        //___Card de trasmisión
                        NavigationLink(destination: InfoTTB()){
                            ZStack{
                                Color.Rosa
                                VStack{
                                    Image("c3").resizable().frame(width: 370,height: 250).shadow(radius: 15)
                                    //Color.black.opacity(0.3)
                                    Text("¿Cómo se transmite la TB?").foregroundColor(.white).fontWeight(.bold).font(.system(size: 45)).frame(width: 400)

                                }
                            }.frame(width: 480,height: 500).cornerRadius(30).shadow(radius: 5)
                            //Fin del Zstack de la tarjeta
                            
                        }//Fin del NavigationLink
                        
                        
                        //___Card de sintomas
                        NavigationLink(destination: SintoView()){
                            ZStack{
                                Color.Rosa
                                VStack{
                                    Image("c2").resizable().frame(width: 180,height: 300).shadow(radius: 15)
                                    //Color.black.opacity(0.3)
                                    Text("¿Cuáles son los síntomas de la TB?").foregroundColor(.white).fontWeight(.bold).font(.system(size: 45))

                                }
                            }.frame(width: 480,height: 500).cornerRadius(30).shadow(radius: 5)
                            //Fin del Zstack de la tarjeta
                            
                        }//Fin del NavigationLink
                        
                        //___Card de ¿Es posible prevenir la TB?
                        NavigationLink(destination: PTBView()){
                            ZStack{
                                Color.Rosa
                                VStack{
                                    Image("c4").resizable().frame(width: 170,height: 230).shadow(radius: 15)
                                    //Color.black.opacity(0.3)
                                    Text("¿Es posible prevenir la TB?").foregroundColor(.white).fontWeight(.bold).font(.system(size: 45))

                                }
                            }.frame(width: 480,height: 500).cornerRadius(30).shadow(radius: 5)
                            //Fin del Zstack de la tarjeta
                            
                        }//Fin del NavigationLink
                        
                        //___Card de ¿Donde puedo ir en Tapachula?
                        NavigationLink(destination: DTBView()){
                            ZStack{
                                Color.Rosa
                                VStack{
                                    Image("hos").resizable().frame(width: 270,height: 230).shadow(radius: 15)
                                    //Color.black.opacity(0.3)
                                    Text("¿A dónde ir en Tapachula?").foregroundColor(.white).fontWeight(.bold).font(.system(size: 45))

                                }
                            }.frame(width: 480,height: 500).cornerRadius(30).shadow(radius: 5)
                            //Fin del Zstack de la tarjeta
                            
                        }//Fin del NavigationLink
                        
                        
                    }.padding(.leading,20)//Fin del Hstack
                }//Fin del ScrollView
            }.frame(maxHeight: .infinity, alignment: .top)
            //Fin del VStack
            
        }.ignoresSafeArea(.all).background(Color.Celeste)
        //Fin del ZStack
    }
}
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
