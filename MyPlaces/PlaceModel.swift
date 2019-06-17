//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Valeriy Pokatilo on 16/06/2019.
//  Copyright © 2019 Valeriy Pokatilo. All rights reserved.
//

import UIKit

struct Place {
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
   static let restName = ["Velvet", "Restol", "Матрешка", "Moscow", "GrandMa",
                    "KFC", "Tokio", "Alpenhov", "Sushi-brothers", "Иртыш",
                    "Village", "Burger-king", "Diplomat", "Izmir", "Шашлычная №1"]
   static let restImage = ["f001.jpg", "f002.jpg", "f003.jpg", "f004.jpg", "f005.jpg",
                     "f006.jpg", "f007.jpg", "f008.jpg", "f009.jpg", "f010.jpg",
                     "f011.jpg", "f012.jpg", "f013.jpg", "f014.jpg", "f015.jpg"]
    
   static let restType = ["Ресторан", "Караоке", "Фаст фуд", "Суши бар", "Клуб",
                    "Ресторан", "Караоке", "Фаст фуд", "Суши бар", "Клуб",
                    "Ресторан", "Караоке", "Фаст фуд", "Суши бар", "Клуб"]
    
   static let restLocation = ["Кутузова 22", "Лермонтова 6", "Камзина 163", "Ворушина 19", "Торайгырова 75",
                        "Елгина 1", "Каирбаева 34", "Димитрова 88", "Сатпаева 42", "Чкалова 11",
                        "Гагарина 78", "Московская 55", "Назарбаева 219", "1 Мая 284", "Урицкого 76"]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for index in 0...14 {
            places.append(Place(name: restName[index],
                                location: restLocation[index],
                                type: restType[index],
                                image: nil,
                                restaurantImage: restImage[index]))
        }
        
        
        return places
    }

    
    
}
