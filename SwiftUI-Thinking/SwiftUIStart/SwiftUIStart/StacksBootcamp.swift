//
//  StacksBootcamp.swift
//  SwiftUI-Start
//
//  Created by Меньков Д.В. on 29/1/23.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 350, height: 500)
            
            VStack {
                Rectangle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height: 50)
                
                HStack {
                    Rectangle()
                        .fill(.yellow)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(.orange)
                        .frame(width: 50, height: 50)
                }
                
            }
            .background {
                Color.white
            }
            
        }
    }
}

struct ZStackV1: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(.blue)
                .frame(width: 150, height: 120)
            
            Rectangle()
                .fill(.red)
                .frame(width: 120, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
        }
    }
}

struct HStackV1Spacing: View {
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Rectangle()
                .fill(.blue)
                .frame(width: 150, height: 120)
            
            Rectangle()
                .fill(.red)
                .frame(width: 120, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
        }
    }
}

struct VStackV2Spacing: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Rectangle()
                .fill(.blue)
                .frame(width: 150, height: 100)
            
            Rectangle()
                .fill(.red)
                .frame(width: 120, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
        }
    }
}

struct VStackV1: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
        }
    }
}


struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
