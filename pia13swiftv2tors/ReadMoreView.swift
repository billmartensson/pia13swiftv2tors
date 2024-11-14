//
//  ReadMoreView.swift
//  pia13swiftv2tors
//
//  Created by BillU on 2024-11-14.
//

import SwiftUI

struct ReadMoreView: View {
    
    @State var readmoretext = "abcabc"
    
    var body: some View {
        VStack {
            
            Text(readmoretext)
                .font(.largeTitle)
                .foregroundColor(Color.red)
            
            Text("Läsa mer")

        }
    }
}

#Preview {
    ReadMoreView()
}
