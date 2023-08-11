//
//  loginApp.swift
//  login
//
//  Created by iOS Dev Lab on 10/08/23.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
    
}





@main
struct loginApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var autMV = AuhViewModel()
    
    var body: some Scene {
        WindowGroup {
            if autMV.user == nil {
                ContentView(authVM: autMV)
                
            }else{
                //Text("Autenticado")
                ZStack{
                    Color.white.ignoresSafeArea()
                    
                    VStack{
                        Button {
                            autMV.logOut()
                        } label: {
                            Label(title: {Text("salir")}, icon: {Image(systemName: "rectangle.portrait.and.arrow.right")})
                        }
                        
                        
                        
                        
                        
                        
                    }

                        
                    
                    
                }
            }
            
            
            
        }
    }
}
