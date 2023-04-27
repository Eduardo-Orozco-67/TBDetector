//
//  Formulario.swift
//  TBDetector
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct FormularioView: View {
    @State var Nombre: String = ""
    @State var Apellidopat: String = ""
    @State var ApellidoMat: String = ""
    @State var FechaNacimiento: String = ""
    @State var Sexo: String = ""
    @State var Edad: String = ""
    @State var Peso: String = ""
    @State var Talla: String = ""
    @State var Telefono: String = ""
    
    @State var Calle: String = ""
    @State var Colonia: String = ""
    @State var Ciudad: String = ""
    @State var CP: String = ""
    
    @State var isPresented: Bool = false
    

    var body: some View {
        ZStack{
            Color.Celeste
            
            VStack{
                ZStack{
                    Color.AguaMarina
                        .frame(width: 1150, height: 110)
                        .cornerRadius(30.0)
                        .opacity(0.50)
                    HStack{
                        Image("Formulario3")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.trailing, 30)
                        
                        Text("FORMULARIO DE REGISTRO DEL MENOR")
                            .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                            .foregroundColor(Color.Rosa)
                    }
                }
                
                HStack{
                    ZStack{
                        Color.AguaMarina
                            .frame(width: 540, height: 540)
                            .cornerRadius(30.0)
                            .opacity(0.30)
                        
                        VStack{
                            Text("Datos personales")
                                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                                .foregroundColor(Color.black)
                                .opacity(0.50)
                            
                            TextField("Nombre", text: $Nombre)
                                .keyboardType(.alphabet)
                                .padding(30)
                                .foregroundColor(.black)
                                .frame(width: 500, height:50)
                                .font(.custom("Helvetica", fixedSize: 30))
                                .background(Color.white)
                                .opacity(0.60)
                                .cornerRadius(50.0)
                                .shadow(radius: 10)
                                .padding(.trailing, 10)
                            
                                .onChange(of: Nombre, perform: { value in
                                    
                                })
                            
                            
                                TextField("Paterno", text: $Apellidopat)
                                    .keyboardType(.alphabet)
                                    .padding(30)
                                    .foregroundColor(.black)
                                    .frame(width: 500, height:50)
                                    .font(.custom("Helvetica", fixedSize: 30))
                                    .background(Color.white)
                                    .opacity(0.60)
                                    .cornerRadius(50.0)
                                    .shadow(radius: 10)
                                    .padding(.trailing, 10)
                                
                                    .onChange(of: Apellidopat, perform: { value in
                                        
                                    })
                                
                                TextField("Materno", text: $ApellidoMat)
                                    .keyboardType(.alphabet)
                                    .padding(30)
                                    .foregroundColor(.black)
                                    .frame(width: 500, height:50)
                                    .font(.custom("Helvetica", fixedSize: 30))
                                    .background(Color.white)
                                    .opacity(0.60)
                                    .cornerRadius(50.0)
                                    .shadow(radius: 10)
                                    .padding(.trailing, 10)
                                
                                    .onChange(of: ApellidoMat, perform: { value in
                                        
                                    })
                            
                                    .padding(.bottom,30)
                            
                            TextField("Fecha de nacimiento", text: $FechaNacimiento)
                                .keyboardType(.alphabet)
                                .padding(30)
                                .foregroundColor(.black)
                                .frame(width: 500, height:50)
                                .font(.custom("Helvetica", fixedSize: 30))
                                .background(Color.white)
                                .opacity(0.60)
                                .cornerRadius(50.0)
                                .shadow(radius: 10)
                                .padding(.trailing, 10)
                            
                                .onChange(of: FechaNacimiento, perform: { value in
                                    
                                })
                            
                            HStack{
                                TextField("Edad", text: $Edad)
                                    .keyboardType(.numberPad)
                                    .padding(30)
                                    .foregroundColor(.black)
                                    .frame(width: 240, height:50)
                                    .font(.custom("Helvetica", fixedSize: 30))
                                    .background(Color.white)
                                    .opacity(0.60)
                                    .cornerRadius(50.0)
                                    .shadow(radius: 10)
                                
                                    .onChange(of: Edad, perform: { value in
                                        
                                    })
                                
                                TextField("Telefono", text: $Telefono)
                                    .keyboardType(.numberPad)
                                    .padding(30)
                                    .foregroundColor(.black)
                                    .frame(width: 240, height:50)
                                    .font(.custom("Helvetica", fixedSize: 30))
                                    .background(Color.white)
                                    .opacity(0.60)
                                    .cornerRadius(50.0)
                                    .shadow(radius: 10)
                                    .padding(.trailing, 10)
                                
                                    .onChange(of: Telefono, perform: { value in
                                        
                                    })
                            }
                            
                            HStack{
                                TextField("Peso", text: $Peso)
                                    .keyboardType(.numberPad)
                                    .padding(30)
                                    .foregroundColor(.black)
                                    .frame(width: 240, height:50)
                                    .font(.custom("Helvetica", fixedSize: 30))
                                    .background(Color.white)
                                    .opacity(0.60)
                                    .cornerRadius(50.0)
                                    .shadow(radius: 10)
                                
                                    .onChange(of: Peso, perform: { value in
                                        
                                    })
                                
                                TextField("Talla", text: $Talla)
                                    .keyboardType(.numberPad)
                                    .padding(30)
                                    .foregroundColor(.black)
                                    .frame(width: 240, height:50)
                                    .font(.custom("Helvetica", fixedSize: 30))
                                    .background(Color.white)
                                    .opacity(0.60)
                                    .cornerRadius(50.0)
                                    .shadow(radius: 10)
                                    .padding(.trailing, 10)
                                
                                    .onChange(of: Talla, perform: { value in
                                        
                                    })
                            }
                            
                            
                        }
                        
                    }
                    .padding()
                    VStack{
                        ZStack{
                            Color.AguaMarina
                                .frame(width: 550, height: 200)
                                .cornerRadius(30.0)
                                .opacity(0.30)
                            
                            VStack{
                            Text("Domicilio")
                                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                                .foregroundColor(Color.black)
                                .opacity(0.50)
                            
                            HStack{
                                TextField("Calle", text: $Calle)
                                    .keyboardType(.alphabet)
                                    .padding(30)
                                    .foregroundColor(.black)
                                    .frame(width: 240, height:50)
                                    .font(.custom("Helvetica", fixedSize: 30))
                                    .background(Color.white)
                                    .opacity(0.60)
                                    .cornerRadius(50.0)
                                    .shadow(radius: 10)
                                
                                    .onChange(of: Calle, perform: { value in
                                        
                                    })
                                
                                TextField("Colonia", text: $Colonia)
                                    .keyboardType(.alphabet)
                                    .padding(30)
                                    .foregroundColor(.black)
                                    .frame(width: 240, height:50)
                                    .font(.custom("Helvetica", fixedSize: 30))
                                    .background(Color.white)
                                    .opacity(0.60)
                                    .cornerRadius(50.0)
                                    .shadow(radius: 10)
                                    .padding(.trailing, 10)
                                
                                    .onChange(of: Colonia, perform: { value in
                                        
                                    })
                            }
                            
                            HStack{
                                TextField("Ciudad", text: $Ciudad)
                                    .keyboardType(.alphabet)
                                    .padding(30)
                                    .foregroundColor(.black)
                                    .frame(width: 240, height:50)
                                    .font(.custom("Helvetica", fixedSize: 30))
                                    .background(Color.white)
                                    .opacity(0.60)
                                    .cornerRadius(50.0)
                                    .shadow(radius: 10)
                                
                                    .onChange(of: Ciudad, perform: { value in
                                        
                                    })
                                
                                TextField("CP", text: $CP)
                                    .keyboardType(.numberPad)
                                    .padding(30)
                                    .foregroundColor(.black)
                                    .frame(width: 240, height:50)
                                    .font(.custom("Helvetica", fixedSize: 30))
                                    .background(Color.white)
                                    .opacity(0.60)
                                    .cornerRadius(50.0)
                                    .shadow(radius: 10)
                                    .padding(.trailing, 10)
                                
                                    .onChange(of: CP, perform: { value in
                                        
                                    })
                            }
                        }
                            
                        }
                        
                        Image("Formulario1")
                            .resizable()
                            .frame(width: 450, height: 280)
                        
                        
                            
                            if Nombre == "" || Apellidopat == "" || ApellidoMat == "" || FechaNacimiento == "" || Edad == "" || Peso == "" || Talla == "" || Telefono == ""{
                                    
                                    Button("Continuar") {
                                        isPresented = true
                                    }
                                
                                .foregroundColor(.white)
                                .frame(width: 200, height:50)
                                .font(.custom("Helvetica", fixedSize: 30))
                                .background(Color.AzulMarino)
                                .opacity(0.80)
                                .cornerRadius(30.0)
                                
                                //.padding(EdgeInsets(top: -40, leading: 570, bottom: 0, trailing: 0))
                                
                                .alert(isPresented: $isPresented, content: {
                                    Alert(title: Text("Campos vacíos"),
                                          message: Text("Es necesario completar todos los campos"),
                                          
                                          primaryButton: Alert.Button.default(Text("Accept"), action: {
                                        
                                    }),
                                          secondaryButton: .destructive(Text("Cancel")))
                                })
                                
                            } else{
                                
                                NavigationLink(destination: EncuestaView()){
                                    Text("Continuar")
                                        .foregroundColor(.white)
                                        .frame(width: 200, height:50)
                                        .font(.custom("Helvetica", fixedSize: 30))
                                        .background(Color.AzulMarino)
                                        .opacity(0.80)
                                        .cornerRadius(30.0)
                                
                            }
                        }
                    }
                }
                
                
                
            }
            
        }.ignoresSafeArea()
    }
}

struct FormularioView_Previews: PreviewProvider {
    static var previews: some View {
        FormularioView()
    }
}

