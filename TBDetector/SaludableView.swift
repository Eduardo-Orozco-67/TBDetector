//
//  SaludableView.swift
//  TBDetector
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct SaludableView: View {
    var body: some View {
        ZStack{
            Color.Celeste
            VStack{
                ZStack{
                    Color.AguaMarina
                        .frame(width: 1150, height: 110)
                        .cornerRadius(30.0)
                        .opacity(0.50)
                    
                    Text("¡GENIAL! Estás libre de peligro")
                        .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                        .foregroundColor(Color.Rosa)
                }
                HStack{
                    Image("Saludable")
                        .resizable()
                        .frame(width: 600, height: 400)
                    
                    ZStack{
                        Color.AguaMarina
                            .frame(width: 500, height: 500)
                            .cornerRadius(30.0)
                            .opacity(0.50)
                        
                        VStack{
                            Image("Alerta")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .padding(.top, 20)
                            
                            Text("Te recomendamos que sigas cuidándote y siguiendo las medidas necesarias de prevenció. Tambén puede acceder al aprtado de información")
                                .font(.custom("Arial Rounded MT Bold", fixedSize: 30))
                                .multilineTextAlignment(.center)
                                .frame(width: 500, height: 300)
                                .padding(.top, -50)
                        }
                    }
                }
                
                NavigationLink(destination: Principal()){
                    Text("Inicio")
                        .foregroundColor(.white)
                        .frame(width: 200, height:50)
                        .font(.custom("Helvetica", fixedSize: 30))
                        .background(Color.AzulMarino)
                        .opacity(0.80)
                        .cornerRadius(30.0)
                }
            }
        }.ignoresSafeArea()
            .navigationBarHidden(true)
        
    }
}


struct SaludableView_Previews: PreviewProvider {
    static var previews: some View {
        SaludableView()
    }
}
