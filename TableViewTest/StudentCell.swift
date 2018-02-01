//
//  StudentCell.swift
//  TableViewTest
//
//  Created by Jesus Lopez de Nava on 1/29/18.
//  Copyright © 2018 Jesus Lopez de Nava. All rights reserved.
//

import UIKit

class StudentCell: UITableViewCell {

    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var lastName: UILabel!
    
    func configureCell(student: Student) {
        
        picture.image = UIImage(named: student.picture)
        name.text = student.name
        lastName.text = student.lastname
        
    }
    
    
}
