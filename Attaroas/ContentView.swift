//
//  ContentView.swift
//  Attaroas
//
//  Created by Rawiphon Kumpapan on 25/8/2565 BE.
//
import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = "";
    @State  var logined: Bool = false
    var body: some View {
        if self.logined == false{
        HStack{
    VStack{
Text("Attaroas")
        TextField("Enter your email: ", text: $email)
            .padding()
        HStack{
            VStack{
            }
        }
        HStack{
            VStack{
        }
        }
                SecureField("Enter your password: ", text: $password)
                .padding()
        Button("Login", action:{
            self.logined.toggle()
                    })
    }
        }
        }
            menuView(logined: $logined)
}
}
struct menuView: View{
    @Binding var logined: Bool
    var body: some View{
        if self.logined{
            Button("Logout", action: {
                self.logined.toggle()
            })
            Text("Welcome")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
