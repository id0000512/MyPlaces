//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Valeriy Pokatilo on 15/06/2019.
//  Copyright © 2019 Valeriy Pokatilo. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restName = ["Velvet", "Restol", "Матрешка", "Moscow", "GrandMa",
                    "KFC", "Tokio", "Alpenhov", "Sushi-brothers", "Иртыш",
                    "Village", "Burger-king", "Diplomat", "Izmir", "Шашлычная №1"]
    let restImage = ["f001.jpg", "f002.jpg", "f003.jpg", "f004.jpg", "f005.jpg",
                     "f006.jpg", "f007.jpg", "f008.jpg", "f009.jpg", "f010.jpg",
                     "f011.jpg", "f012.jpg", "f013.jpg", "f014.jpg", "f015.jpg"]
    
    let restType = ["Ресторан", "Караоке", "Фаст фуд", "Суши бар", "Клуб",
                    "Ресторан", "Караоке", "Фаст фуд", "Суши бар", "Клуб",
                    "Ресторан", "Караоке", "Фаст фуд", "Суши бар", "Клуб"]
    
    let restLocation = ["Кутузова 22", "Лермонтова 6", "Камзина 163", "Ворушина 19", "Торайгырова 75",
                        "Елгина 1", "Каирбаева 34", "Димитрова 88", "Сатпаева 42", "Чкалова 11",
                        "Гагарина 78", "Московская 55", "Назарбаева 219", "1 Мая 284", "Урицкого 76"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restName.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.thumbnailImage.image = UIImage(named: restImage[indexPath.row])
        cell.thumbnailImage.layer.cornerRadius = cell.thumbnailImage.frame.size.height / 2
        cell.thumbnailImage.clipsToBounds = true
        
        cell.nameLabel.text = restName[indexPath.row]
        cell.typeLabel.text = restType[indexPath.row]
        cell.locationLabel.text = restLocation[indexPath.row]


        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    

 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
