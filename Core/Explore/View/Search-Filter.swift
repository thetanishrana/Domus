//
//  Search-Filter.swift
//  Domus
//
//  Created by Tanish Rana on 01/08/24.
//

import SwiftUI

struct Search_Filter: View {
    @Binding var location: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2) {
                Text(location.isEmpty ? "Where is home?" : location)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text(location.isEmpty ? "Anywhere" : "results")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    Search_Filter(location: .constant("Brooklyn"))
}
