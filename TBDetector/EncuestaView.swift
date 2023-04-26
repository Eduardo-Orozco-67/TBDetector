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
            Form {
                Section(header: Text("Síntomas")) {
                    Toggle(isOn: $tos) {
                        Text("Tos persistente por más de dos semanas")
                    }
                    Toggle(isOn: $fiebre) {
                        Text("Fiebre")
                    }
                    Toggle(isOn: $sudoresNocturnos) {
                        Text("Sudores nocturnos")
                    }
                    Toggle(isOn: $perdidaDePeso) {
                        Text("Pérdida de peso sin razón aparente")
                    }
                    Toggle(isOn: $fatiga) {
                        Text("Fatiga generalizada")
                    }
                }
                Section(header: Text("Resultado")) {
                    Text(resultado)
                        .font(.headline)
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

struct EncuestaView_Previews: PreviewProvider {
    static var previews: some View {
        EncuestaView()
    }
}
