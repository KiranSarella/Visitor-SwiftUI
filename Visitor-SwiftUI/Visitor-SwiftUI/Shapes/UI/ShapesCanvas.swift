//
//  ShapesList.swift
//  Visitor-SwiftUI
//
//

import SwiftUI

struct ShapesCanvas: View {
    
    @State var state = ShapesListState()
    
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Picker("CalculatorType", selection: $state.selectedCalculationType) {
                    ForEach(CalculationType.allCases, id: \.self) {
                        Text($0.rawValue)
                            .tag($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                Spacer()
            }
            
            VStack {
                Text("\(state.selectedCalculationType.rawValue) of a \(state.selectedShape.name)")
                    .font(.title3)
                    .fontDesign(.monospaced)
                    .padding()
                Text(state.result.rounded2)
                    .font(.title)
                    .fontDesign(.monospaced)
                    .padding()
            }
            
            ScrollView(.horizontal, content: {
                Spacer()
                HStack {
                    ForEach(state.shapes, id: \.id) { shape in
                        Button {
                            state.calculate(for: shape)
                        } label: {
                            Image(systemName: shape.image)
                                .resizable()
                                .frame(width: 70, height: 70)
                                .padding()
                        }
                    }
                }
                Spacer()
            })
            .defaultScrollAnchor(.center)
            .frame(height: 200)
            .padding()
            
            Spacer()
        }
        .onChange(of: state.selectedCalculationType) { oldValue, newValue in
            state.recalculate()
        }
    }
}

//#Preview {
//    ShapesList()
//}

