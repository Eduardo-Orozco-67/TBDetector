//
//  form2View.swift
//  TBDetector
//
//  Created by ADMIN UNACH on 26/04/23.
//
import SwiftUI

struct form2View: View {
    
    let options = ["Tos", "Tos seca", "Estupor", "Fiebre", "Astenia", "Adinámica",                   "Temblor", "Diaforesis", "Cefalea", "Hiporexia", "Debilidad",                   "Náuseas", "Adenopatía", "Vómito", "Letargo", "Hemoptisis",                   "Pérdida de peso", "Desorientación", "Rigidez de nuca",                   "Parálisis", "Somnolencia", "Convulsiones", "Debilidad muscular", "Falta de aire"]
    
    @State private var selectedOptions = [String]()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        let selectedCount = selectedOptions.count
        let totalCount = options.count
        
        let normalThreshold = 0.2
        let hygieneThreshold = 0.4
        let frequentDoctorThreshold = 0.6
        let visitDoctorThreshold = 0.8
        
        var message = ""
        
        if selectedCount == 0 {
            message = "Seleccione al menos un síntoma."
        } else if Double(selectedCount) / Double(totalCount) < normalThreshold {
            message = "Su salud está excelente."
        } else if Double(selectedCount) / Double(totalCount) < hygieneThreshold {
            message = "Todo está normal, pero asegúrese de seguir las medidas de higiene."
        } else if Double(selectedCount) / Double(totalCount) < frequentDoctorThreshold {
            message = "Visite a su médico con frecuencia y siga las medidas de higiene."
        } else if Double(selectedCount) / Double(totalCount) < visitDoctorThreshold {
            message = "Visite a su médico."
        } else {
            message = "Necesita atención urgente. Visite a su médico lo antes posible."
        }
        
        return ZStack{
            Image("l1")
                .resizable()
                .frame(width: 1370, height: 1040)
            VStack {
                Spacer()
                Text(message)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .padding()
                Spacer()
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(options, id: \.self) { option in
                            Toggle(option, isOn: Binding(
                                get: { self.selectedOptions.contains(option) },
                                set: { if $0 {
                                    self.selectedOptions.append(option)
                                } else {
                                    self.selectedOptions.removeAll(where: { $0 == option })
                                }}
                            ))
                        }
                        Spacer()
                        
                        
                        }
                        .padding()
                    }
                    .padding()
                
               
                
                Spacer()
            }
            
            Button(action: { }) {
                Text("Enviar")
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 100)
                    .background(Color.green)
                    .cornerRadius(10)
            }
                     
        }.ignoresSafeArea()
    }
}



struct form2View_Previews: PreviewProvider {
    static var previews: some View {
        form2View()
    }
}
