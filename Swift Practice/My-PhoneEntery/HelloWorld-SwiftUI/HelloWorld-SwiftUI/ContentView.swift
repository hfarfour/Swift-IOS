//
//  ContentView.swift
//  HelloWorld-SwiftUI
//
//  Created by Hossam Farfour on 12/10/2022.
//

import SwiftUI
/*
struct ContentView: View {
    @State var textBoxText: String = "Hello World"
    var body: some View {
        VStack(alignment: .center) { // to but staff in one screen
            Text(textBoxText)
                .padding()
    
            TextField("Enter some text", text: $textBoxText) .frame(width: 250, height: 75, alignment:.center).textFieldStyle(.roundedBorder)  //link to @state var
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 */
//or

 struct ContentView: View {
     @State var textBoxText: String = ""
     @State var labelText: String = "Hello World"
     var body: some View {
         VStack(alignment: .center) { // to but staff in one screen
             Text(labelText)
                 .padding()
             Button(action: Clickme) {
                 Text("Click-me")
             }
             TextField("Enter some text", text: $textBoxText) .frame(width: 250, height: 75, alignment:.center).textFieldStyle(.roundedBorder)  //link to @state var
         }
     }
     func Clickme (){
         labelText = "hello, there " + textBoxText
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }
