//
//  SetUp.swift
//  SAP Gitathon
//
//  Created by LIM YEE SIN RACHEL stu on 23/6/22.
//

import Foundation

enum OptionChoice {
    case option1, option2, option3, option4
}
struct quiz {
    var question: String
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    
    var correctOption: OptionChoice
}
