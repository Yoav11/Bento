//
//  WeekTitle.swift
//  Bento
//
//  Created by Yoav Nir on 14/01/2020.
//  Copyright © 2020 Yoav Nir. All rights reserved.
//

import SwiftUI

struct WeekTitle: View {
    var body: some View {
        HStack {
            Image(systemName: "arrowtriangle.left")
                .padding(.leading)
                .foregroundColor(.red)
            Text("13 - 19 January")
                .font(.title)
                .padding()
            Image(systemName: "arrowtriangle.right")
                .foregroundColor(.red)
        }
    }
}

struct WeekTitle_Previews: PreviewProvider {
    static var previews: some View {
        WeekTitle()
    }
}
