//
//  PersonRow.swift
//  pia13swiftv2tors
//
//  Created by BillU on 2024-11-14.
//

import SwiftUI

struct PersonRow: View {
    
    @State var thename : String
    
    var body: some View {
        HStack {
            Text(thename)
                .foregroundColor(Color.white)
                .padding(.leading)
            
            Spacer()
            
            VStack {
            }
            .frame(width: 30.0, height: 30.0)
            .background(Color.blue)
            .padding(.trailing)

        }
        .frame(height: 50)
        .background(Color.gray)
    }
}

#Preview {
    PersonRow(thename: "Banan")
}

#Preview {
    PersonRow(thename: "Väldigt lång text som kanske blir i vägen för annat")
}
