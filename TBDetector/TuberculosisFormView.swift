//
//  TuberculosisFormView.swift
//  TBDetector
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct TuberculosisFormView: View {
    @State private var tos: Bool = false
       @State private var fiebre: Bool = false
       @State private var sudoresNocturnos: Bool = false
       @State private var perdidaDePeso: Bool = false
       @State private var fatiga: Bool = false
       @State private var resultado: String = ""
       
    var body: some View {
        ZStack{
            Color.Celeste
            HStack(spacing: 700){
                Image("Doc3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280, height: 850)
                Image("Doc4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280, height: 1000)
            }
            VStack (spacing: 60) {
                VStack{
                    Text("¿Tiene el niño alguno de")
                        .font(.system(size: 50))
                    Text(" estos síntomas?")
                        .font(.system(size: 50))
                }
                VStack (spacing: 40){
                    HStack (spacing: 280){
                        VStack {
                            VStack{
                                Image(systemName: "lungs.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70)
                                Text("Tos")
                                    .font(.system(size: 25))
                            }
                            
                            VStack {
                                       Toggle(isOn: $tos) {
                                           Text("")
                                       }
                                       .frame(width: 5, height: 40)
                                       .scaleEffect(x: tos ? 1 : 1.2) // Escala el botón en X
                                       .background(
                                           ZStack {
                                               RoundedRectangle(cornerRadius: 20)
                                                   .fill(tos ? Color.green : Color.red)
                                                   .frame(width: 70) // Ancho del fondo rojo
                                               RoundedRectangle(cornerRadius: 20)
                                                   .stroke(Color.gray, lineWidth: 2)
                                           }
                                       )
                                       .foregroundColor(.white)
                                       .padding(.horizontal, 8)
                                       .onChange(of: tos) { _ in
                                           withAnimation {
                                               // Código que deseas animar
                                           }
                                       }
                                   }
                        }
                        .scaleEffect(1.5)
                        VStack {
                            VStack{
                                Image(systemName: "thermometer.sun.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70)
                                    .padding(.bottom, 10)
                                Text("Fiebre")
                                    .font(.system(size: 25))
                            }
                            
                            VStack {
                                       Toggle(isOn: $fiebre) {
                                           Text("")
                                       }
                                       .frame(width: 5, height: 40)
                                       .scaleEffect(x: fiebre ? 1 : 1.2) // Escala el botón en X
                                       .background(
                                           ZStack {
                                               RoundedRectangle(cornerRadius: 20)
                                                   .fill(fiebre ? Color.green : Color.red)
                                                   .frame(width: 70) // Ancho del fondo rojo
                                               RoundedRectangle(cornerRadius: 20)
                                                   .stroke(Color.gray, lineWidth: 2)
                                           }
                                       )
                                       .foregroundColor(.white)
                                       .padding(.horizontal, 8)
                                       .onChange(of: fiebre) { _ in
                                           withAnimation {
                                               // Código que deseas animar
                                           }
                                       }
                                   }

                        }
                        .scaleEffect(1.5)
                    }
                    
                    HStack (spacing: 190){
                        
                        VStack {
                            VStack{
                                Image(systemName:  "bed.double.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70)
                                    .padding(.bottom, 10)
                                
                                Text("Sudor Nocturno")
                                    .font(.system(size: 25))
                            }

                            VStack {
                                       Toggle(isOn: $sudoresNocturnos) {
                                           Text("")
                                       }
                                       .frame(width: 5, height: 40)
                                       .scaleEffect(x: sudoresNocturnos ? 1 : 1.2) // Escala el botón en X
                                       .background(
                                           ZStack {
                                               RoundedRectangle(cornerRadius: 20)
                                                   .fill(sudoresNocturnos ? Color.green : Color.red)
                                                   .frame(width: 70) // Ancho del fondo rojo
                                               RoundedRectangle(cornerRadius: 20)
                                                   .stroke(Color.gray, lineWidth: 2)
                                           }
                                       )
                                       .foregroundColor(.white)
                                       .padding(.horizontal, 8)
                                       .onChange(of: sudoresNocturnos) { _ in
                                           withAnimation {
                                               // Código que deseas animar
                                           }
                                       }
                                   }
                        }
                        .scaleEffect(1.5)
                        VStack {
                            VStack{
                                Image(systemName: "scalemass.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70)
                                    .padding(.bottom, 10)
                                
                                Text("Peridada de peso")
                                    .font(.system(size: 25))
                            }
                            VStack {
                                       Toggle(isOn: $perdidaDePeso) {
                                           Text("")
                                       }
                                       .frame(width: 5, height: 40)
                                       .scaleEffect(x: perdidaDePeso ? 1 : 1.2) // Escala el botón en X
                                       .background(
                                           ZStack {
                                               RoundedRectangle(cornerRadius: 20)
                                                   .fill(perdidaDePeso ? Color.green : Color.red)
                                                   .frame(width: 70) // Ancho del fondo rojo
                                               RoundedRectangle(cornerRadius: 20)
                                                   .stroke(Color.gray, lineWidth: 2)
                                           }
                                       )
                                       .foregroundColor(.white)
                                       .padding(.horizontal, 8)
                                       .onChange(of: perdidaDePeso) { _ in
                                           withAnimation {
                                               // Código que deseas animar
                                           }
                                       }
                                   }
                               
                          
                        }
                        .scaleEffect(1.5)
                        VStack {
                            VStack{
                                Image(systemName: "zzz")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70)
                                    .padding(.bottom, 10)
                                
                                Text("Cansancio")
                                    .font(.system(size: 25))
                            }
                            
                            VStack {
                                       Toggle(isOn: $fatiga) {
                                           Text("")
                                       }
                                       .frame(width: 5, height: 40)
                                       .scaleEffect(x: fatiga ? 1 : 1.2) // Escala el botón en X
                                       .background(
                                           ZStack {
                                               RoundedRectangle(cornerRadius: 20)
                                                   .fill(fatiga ? Color.green : Color.red)
                                                   .frame(width: 70) // Ancho del fondo rojo
                                               RoundedRectangle(cornerRadius: 20)
                                                   .stroke(Color.gray, lineWidth: 2)
                                           }
                                       )
                                       .foregroundColor(.white)
                                       .padding(.horizontal, 8)
                                       .onChange(of: fatiga) { _ in
                                           withAnimation {
                                               // Código que deseas animar
                                           }
                                       }
                                   }
                            
                            
                        }
                        .scaleEffect(1.5)
                    }
                    
                }
                VStack{
                    Button(action: evaluar) {
                        Text("Evaluar")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .frame(width: 300, height: 50)
                            .cornerRadius(10)
                    }
                    
                    Text(resultado)
                        .font(.system(size: 40))
                        .padding()
                }
            }
            .navigationBarTitle("Formulario de detección de tuberculosis")
        }.ignoresSafeArea()
    }
       
       func evaluar() {
           if tos && fiebre && sudoresNocturnos && perdidaDePeso && fatiga {
               resultado = "Posible tuberculosis. Por favor, consulte a un médico."
           } else {
               resultado = "No se detectaron síntomas de tuberculosis."
           }
       }
   }


struct TuberculosisFormView_Previews: PreviewProvider {
    static var previews: some View {
        TuberculosisFormView()
    }
}
