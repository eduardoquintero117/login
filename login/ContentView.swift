//
//  ContentView.swift
//  login
//
//  Created by iOS Dev Lab on 10/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    @StateObject var authVM: AuhViewModel
    var body: some View {
        ZStack{
            
            Color
                .white
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 600)
                .foregroundColor(.blue)
                .shadow(radius: 10)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 260, height: 290)
                .foregroundColor(.white)
                .shadow(radius: 10)
            
            
            
            
            VStack{
                Text("Login").font(.title)
                TextField("Email",text: $email)
                    .keyboardType(.emailAddress)
                    .padding()
                    .frame(width: 250,height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.gray,width: 0.3)
                
                SecureField("Password",text: $password)
                    .keyboardType(.emailAddress)
                    .padding()
                    .frame(width: 250,height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                
                
                Button("Login"){
                    authVM.login(whithEmail: email, andPassword: password)
                }
                .foregroundColor(.white)
                .frame(width: 240,height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                
                Button("Register"){
                    authVM.login(whithEmail: email, andPassword: password)
                }
                .foregroundColor(.white)
                .frame(width: 240,height: 50)
                .background(Color.green)
                .cornerRadius(10)
                
            }
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(authVM: AuhViewModel())
    }
}
