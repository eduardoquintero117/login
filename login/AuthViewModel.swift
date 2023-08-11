//
//  AuthViewModel.swift
//  login
//
//  Created by iOS Dev Lab on 10/08/23.
//

import Foundation
import FirebaseAuth



class AuhViewModel: ObservableObject {
    
    @Published var user: User?
    
    func login(whithEmail email:String, andPassword password:String)-> Void{
        if email.isEmpty{return}
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error {
                print("Error no de pudo auntenticar el usuario, \(error.localizedDescription)")
                return
            }else{
                print("Debug: usuario autentificado")
                self.user = Auth.auth().currentUser
                
                
            }
        }
        
    }
    
    
    func logOut() -> Void {
        do{
            self.user = nil
            try Auth.auth().signOut()
            
        }catch let error {
            print("Debug: Error al salir, \(error.localizedDescription)")
            
        }
        
    }
    
}



