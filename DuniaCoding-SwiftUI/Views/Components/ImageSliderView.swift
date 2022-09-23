//
//  ImageSliderView.swift
//  DuniaCoding-SwiftUI
//
//  Created by gilang.bhagawadita on 22/09/22.
//

import SwiftUI

struct ImageSlider: View {
    var medias: [PostMedia]
    
    init(medias: [PostMedia]) {
        self.medias = medias
    }
    
    var body: some View {
        TabView {
            ForEach(medias) { media in
                AsyncImage(url: URL(string: media.mediaURL), content: { image in
                    return image.resizable()
                }, placeholder: {
                    return Text("...")
                })
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}
