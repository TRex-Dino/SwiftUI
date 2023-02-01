//
//  GridBootcamp.swift
//  SwiftUIStart
//
//  Created by Меньков Д.В. on 1/2/23.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns = [
//        GridItem(.adaptive(minimum: 50), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 10, maximum: 100), spacing: nil, alignment: nil),
        
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 1,
                pinnedViews: [
                    .sectionHeaders
                ]) {
                    Section {
                        ForEach(0..<10) { _ in
                            Rectangle()
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .foregroundColor(.white)
                            .padding()
                    }

                    Section {
                        ForEach(0..<10) { _ in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                }
            
            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { _ in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
