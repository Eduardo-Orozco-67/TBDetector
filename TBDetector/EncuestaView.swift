//
//  EncuestaView.swift
//  TBDetector
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct EncuestaView: View {
    @State private var tos: Bool = false
       @State private var fiebre: Bool = false
       @State private var sudoresNocturnos: Bool = false
       @State private var perdidaDePeso: Bool = false
       @State private var fatiga: Bool = false
       @State private var resultado: String = ""
       
       var body: some View {
           VStack {
               Text("¿Tiene el niño alguno de estos síntomas?")
                   .font(.headline)
                   .padding()
               
               HStack {
                   SymptomToggle(isOn: $tos, icon: "tose")
                   SymptomToggle(isOn: $fiebre, icon: "fiebre")
               }
               
               HStack {
                   SymptomToggle(isOn: $sudoresNocturnos, icon: "sudores")
                   SymptomToggle(isOn: $perdidaDePeso, icon: "peso")
               }
               
               HStack {
                   SymptomToggle(isOn: $fatiga, icon: "fatiga")
               }
               
               Button(action: evaluar) {
                   Text("Evaluar")
                       .font(.headline)
                       .foregroundColor(.white)
                       .padding()
                       .frame(maxWidth: .infinity)
                       .background(Color.blue)
                       .cornerRadius(10)
               }
               
               Text(resultado)
                   .font(.headline)
                   .padding()
               
           }
           .navigationBarTitle("Formulario de detección de tuberculosis")
       }
       
       func evaluar() {
           if tos && fiebre && sudoresNocturnos && perdidaDePeso && fatiga {
               resultado = "Posible tuberculosis. Por favor, consulte a un médico."
           } else {
               resultado = "No se detectaron síntomas de tuberculosis."
           }
       }
   }

   struct SymptomToggle: View {
       @Binding var isOn: Bool
       var icon: String
       
       var body: some View {
           VStack {
               Image(systemName: icon)
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 50, height: 50)
                   .padding(.bottom, 10)
               
               Toggle(isOn: $isOn) {
                   Text("")
               }
               .labelsHidden()
           }
       }
   }

struct EncuestaView_Previews: PreviewProvider {
    static var previews: some View {
        EncuestaView()
    }
}
