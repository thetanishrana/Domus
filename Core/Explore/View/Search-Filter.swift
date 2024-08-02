//
//  DestinationSearchView.swift
//  Domus
//
//  Created by Tanish Rana on 01/08/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case bedrooms
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var numBedrooms = 1
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.snappy) {
                        viewModel.updateListingsForLocation()
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if !viewModel.searchedLocation.isEmpty {
                    Button("Clear") {
                        viewModel.searchedLocation = ""
                        viewModel.updateListingsForLocation()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            VStack (alignment: .leading) {
                if selectedOption == .location {
                    Text("Where is your next home?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search Location", text: $viewModel.searchedLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateListingsForLocation()
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    ExtractedView(title: "Where", description: "Search")
                }
                
            }
            .modifier(collapsibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 :64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            // bedrooms
            VStack (alignment: .leading) {
                if selectedOption == .bedrooms {
                    Text("How many bedrooms?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        
                    Stepper {
                        Text("\(numBedrooms) Bedrooms")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    } onIncrement: {
                        numBedrooms += 1
                    } onDecrement: {
                        guard numBedrooms > 1 else {return}
                        numBedrooms -= 1
                    }
                } else {
                    ExtractedView(title: "Bedrooms", description: "Add")
                }
            }
            .modifier(collapsibleDestinationViewModifier())
            .frame(height: selectedOption == .bedrooms ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .bedrooms
                }
            
            }
        }
        
        Spacer()
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}

struct collapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

struct ExtractedView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
            
        }
    }
}
