//
//  Contact.swift
//  ContactBook
//
//  Created by Nurdana Rakhymova on 1/20/22.
//

import Foundation
import UIKit

class Contact{
    var name_surname: String?
    var number: String?
    var image: UIImage?
    init(_ name_surname: String, _ number: String, _ image: UIImage) {
        self.name_surname=name_surname
        self.number=number
        self.image=image
    }
}
