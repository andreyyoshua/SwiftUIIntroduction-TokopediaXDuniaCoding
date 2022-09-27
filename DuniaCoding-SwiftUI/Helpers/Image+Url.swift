//
//  Image+Url.swift
//  DuniaCoding-SwiftUI
//
//  Created by gilang.bhagawadita on 27/09/22.
//

import Foundation
import SwiftUI

extension Image {
    func data(url: URL?) -> Self {
        if let url = url {
            if let data = try? Data(contentsOf: url) {
                return Image(uiImage: UIImage(data: data)!)
            }
            return self
        }
        return self
    }
}
