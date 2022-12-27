//
//  CircleImg.swift
//  myapp
//
//  Created by syed.sohail on 23/12/22.
//

import SwiftUI

struct CircleImg: View {
    var image: Image
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }.shadow(radius: 5)
            
    }
}

struct CircleImg_Previews: PreviewProvider {
    static var previews: some View {
        CircleImg(image: Image("turtlerock"))
    }
}
