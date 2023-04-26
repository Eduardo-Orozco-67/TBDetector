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
           VStack (spacing: 60) {
               Text("¿Tiene el niño alguno de estos síntomas?")
                   .font(.headline)
                   .padding()
               VStack (spacing: 60){
                   HStack (spacing: 170){
                       VStack {
                           Image(systemName: "lungs.fill")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 70, height: 70)
                               .padding(.bottom, 10)
                           
                           Toggle(isOn: $tos) {
                               Text("")
                           }
                           .labelsHidden()
                       }
                       .scaleEffect(1.5)
                       VStack {
                           Image(systemName: "thermometer.sun.fill")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 70, height: 70)
                               .padding(.bottom, 10)
                           
                           Toggle(isOn: $fiebre) {
                               Text("")
                           }
                           .labelsHidden()
                       }
                       .scaleEffect(1.5)
                   }
                   
                   HStack (spacing: 220){
                       
                       VStack {
                           Image(systemName:  "bed.double.fill")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 70, height: 70)
                               .padding(.bottom, 10)
                           
                           Toggle(isOn: $sudoresNocturnos) {
                               Text("")
                           }
                           .labelsHidden()
                       }
                       .scaleEffect(1.5)
                       VStack {
                           Image(systemName: "scalemass.fill")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 70, height: 70)
                               .padding(.bottom, 10)
                           
                           Toggle(isOn: $perdidaDePeso) {
                               Text("")
                           }
                           .labelsHidden()
                       }
                       .scaleEffect(1.5)
                       VStack {
                           Image(systemName: "zzz")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 70, height: 70)
                               .padding(.bottom, 10)
                           
                           Toggle(isOn: $fatiga) {
                               Text("")
                           }
                           .labelsHidden()
                       }
                       .scaleEffect(1.5)
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
