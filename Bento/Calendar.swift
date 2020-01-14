//
//  Calendar.swift
//  Bento
//
//  Created by Yoav Nir on 14/01/2020.
//  Copyright © 2020 Yoav Nir. All rights reserved.
//

import SwiftUI

struct Calendar: View {
    var body: some View {
        VStack(alignment: .leading) {
            WeekTitle()
            Divider()
            Spacer()
        }
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
