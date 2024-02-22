//
//  DetailView.swift
//  Pasquinade
//
//  Created by Srikanth on 21/02/24.
//

import SwiftUI

struct DetailView: View {
    let lordAction: () -> Void
    let brunceAction: () -> Void
    let lapaioAction: () -> Void
    
    var body: some View {
        VStack {
            Button("Lord") {
                lordAction()
            }
            .buttonStyle(.bordered)
            
            Button("Brunce") {
                brunceAction()
            }
            .buttonStyle(.bordered)
            
            Button("Lapaio") {
                lapaioAction()
            }
            .buttonStyle(.bordered)
        }
    }
}
