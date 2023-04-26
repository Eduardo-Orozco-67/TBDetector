//
//  InfoView.swift
//  TBDetector
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.cyan,.CelestePlus], startPoint: .topLeading, endPoint: .bottomLeading)
                    Color.black.opacity(0.3)
                            //Seccion del texto principal de la vista
            ScrollView{
                
                VStack{
                    Spacer().padding(50)
                    //Primera parte de la info
                    HStack{
                        
                        Image("Doc4").padding(.trailing,50).shadow(radius: 10)
                        Text("La tuberculosis es una enfermedad infecciosa causada por una bacteria llamada Mycobacterium tuberculosis. Según la OMS, un tercio de la población mundial está infectada con la bacteria y es un desafío para la salud pública debido a su alta capacidad de propagación.").foregroundColor(.white).font(.system(size: 40)).multilineTextAlignment(.leading).frame(width: 700).fontWeight(.medium)
                    }.frame(width: 1000, height:    450).padding(.top,10).background(Color.Rosa).cornerRadius(30)
                    
                    Spacer().padding(50)
                    //Segunda parte de la info
                    HStack{
                        
                        Text("La tuberculosis es una enfermedad infecciosa causada por una bacteria llamada Mycobacterium tuberculosis. Según la OMS, un tercio de la población mundial está infectada con la bacteria y es un desafío para la salud pública debido a su alta capacidad de propagación.").foregroundColor(.white).font(.system(size: 40)).multilineTextAlignment(.trailing).frame(width: 700).fontWeight(.medium).padding(.bottom,50)
                        Image("Doc3").padding(.leading,50).shadow(radius: 10)
                    }.frame(width: 1000, height:    450).padding(.top,70).background(Color.Rosa).cornerRadius(30)
                    Spacer().padding(50)
                }
            }.scrollIndicators(ScrollIndicatorVisibility.hidden)//Fin del scrollview
        }.ignoresSafeArea(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
