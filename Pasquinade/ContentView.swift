//
//  ContentView.swift
//  Pasquinade
//
//  Created by Srikanth on 16/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var lordNavigate: Bool = false
    @State var brunceNavigate: Bool = false
    @State var lapaioNavigate: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                DetailView(lordAction: lordAction, brunceAction: brunceAction, lapaioAction: lapaioAction)
                    .padding(20)
                    .background(.yellow)
                
                NavigationLink(destination: LordView(), isActive: $lordNavigate) {
                    EmptyView()
                }
                
                NavigationLink(destination: BrunceView(), isActive: $brunceNavigate) {
                    EmptyView()
                }
                
                NavigationLink(destination: LapaioView(), isActive: $lapaioNavigate) {
                    EmptyView()
                }
                
            }
        }
    }
    
    func lordAction() {
            lordNavigate = true
        }
        
        func brunceAction() {
            brunceNavigate = true
        }
        
        func lapaioAction() {
            lapaioNavigate = true
        }
}

#Preview {
    ContentView()
}

struct LordView: View {
    var body: some View {
        Text("This is Lord View")
    }
}

struct BrunceView: View {
    var body: some View {
        Text("This is Brunce View")
    }
}

struct LapaioView: View {
    var body: some View {
        Text("This is Lapaio View")
    }
}
