//
//  ContentView.swift
//  World Clock
//
//  Created by Mr. Brock💰🤟🏾 on 1/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack() {
            List {
               // DisplayEditor()
                HStack {
                    VStack {
                        Text("Today, -3HRS")
                        Text("Cupertino")
                            .font(.title)
                        
                    }
                    Spacer()
                    Text("6:25 AM")
                        .font(.largeTitle)
                }
                NavigationStack() {
                    HStack {
                        VStack {
                            Text("Today, +0HRS")
                            Text("New York")
                                .font(.title)
                        }
                        Spacer()
                        Text("9:25 AM")
                            .font(.largeTitle)
                    }
                }
                .navigationBarTitle("World Clock")
                .toolbar {
                    EditButton()
                        .offset(x:-300, y: 0)
                    Button("+") {
                        
                        
                    }
                }
            }
        }
    }
}

struct DisplayEditor: View {
    @Environment(\.editMode) var mode
    
    var body: some View {
        if self.mode?.wrappedValue.isEditing ?? true {
            return Text("Editing")
        }
        else {
            return Text("Not Editing")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
