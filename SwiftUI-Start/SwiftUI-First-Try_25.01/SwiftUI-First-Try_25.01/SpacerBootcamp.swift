//
//  SpacerBootcamp.swift
//  SwiftUI-First-Try_25.01
//
//  Created by Меньков Д.В. on 29/1/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .padding(.horizontal)
            .font(.title)
            
            Spacer()
        }
    }
}

struct SpacerBootcampV1: View {
    var body: some View {
        
        HStack(spacing: 0) {
            Spacer(minLength: 0)
            Rectangle()
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            Spacer()        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
