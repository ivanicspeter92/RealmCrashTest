//
//  ChoicelyImage+Reportable.swift
//  Choicely
//
//  Created by Peter Ivanics on 30/08/2017.
//  Copyright © 2017 Choicely. All rights reserved.
//

extension ChoicelyImage: Reportable {
    var id: String {
        return self.imageID ?? ""
    }
}
