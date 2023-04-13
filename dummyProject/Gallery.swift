//
//  Gallery.swift
//  dummyProject
//
//  Created by PLWEP on 12/04/23.
//

import SwiftUI

struct Gallery: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [.init(.adaptive(minimum: 100, maximum: .infinity), spacing: 3)]) {
                ForEach(1..<6) { ix in
                    Image("\(ix)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .clipped()
                        .aspectRatio(1, contentMode: .fit)
                }
            }
        }
        .navigationTitle("Gallery")
    }
}

struct Gallery_Previews: PreviewProvider {
    static var previews: some View {
        Gallery()
    }
}
