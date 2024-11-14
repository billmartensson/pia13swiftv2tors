//
//  ContentView.swift
//  pia13swiftv2tors
//
//  Created by BillU on 2024-11-14.
//

import SwiftUI

// APP PUBLICERAD
// Fixa buggfix i publicerad version

struct ContentView: View {
    
    @State var people : [String] = []
    
    @State var addname : String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                NavigationLink(destination: ReadMoreView()) {
                    Text("GO GO GO")
                }
                
                Text("Hello, world!")
                
                
                
                HStack {
                    TextField("Nytt namn", text: $addname)
                    Button("Lägg till") {
                        people.append(addname)
                        addname = ""
                    }
                }
                .padding(.horizontal)
                
                List(people, id: \.self) { personname in
                    
                    NavigationLink(destination: ReadMoreView(readmoretext: personname)) {
                        PersonRow(thename: personname)
                            .listRowInsets(EdgeInsets())

                    }
                    
                }
                .listStyle(.inset)
                
            } // VSTACK
            .navigationTitle("HEJ")

        } // NAV STACK
        
    }
    
    func nyfunktion() {
        // Den är nu ännu bättre
    }
}

#Preview {
    ContentView(people: ["Apelsin", "Banan"])
}
