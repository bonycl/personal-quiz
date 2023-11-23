//
//  AnimalType.swift
//  personal quiz
//
//  Created by D i on 23.11.2023.
//

enum AnimalType: String {
    case dog = "🐶"
    case cat = "😸"
    case turtle = "🐢"
    case rabbit = "🐰"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть друзьями. Вы окружаете себя людьми, которые вам нравятся. "
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .turtle:
            return "Ваша сила - в мудрости. Вы игрок на длинную дистанцию."
        case .rabbit:
            return "вам нравится все мягкое. Вы полны энергии."
        default:
            <#code#>
        }
    }
}
