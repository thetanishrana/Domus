//
//  ShortlistView.swift
//  Domus
//
//  Created by Tanish Rana on 01/08/24.
//

import SwiftUI

struct ShortlistView: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading, spacing: 32) {
                VStack (alignment: .leading, spacing: 4) {
                    Text("Log in to view your shortlisted homes")
                        .font(.headline)
                    
                }
                
                Button {
                    print("Log In")
                } label: {
                    Text("Log In")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Shortlisted")
        }
    }
}

#Preview {
    ShortlistView()
}
