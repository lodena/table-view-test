//
//  ViewController.swift
//  TableViewTest
//
//  Created by Jesus Lopez de Nava on 1/29/18.
//  Copyright © 2018 Jesus Lopez de Nava. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var students = [Student]()
    var pictures = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"]
    var names = ["pedro", "marta", "jose", "elena", "andy", "jenny", "luis", "ana", "betty", "mario", "antonieta", "horacio"]
    var lastnames = ["lopez", "manriquez", "herrera", "acuna", "solis", "duarte", "ortiz", "borges", "ramirez", "esquivel", "chavez", "sosa"]
    
    var offset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 115
        
        for i in 0...11 {
            let newStudent = Student(picture: pictures[i], name: names[i], lastname: lastnames[i])
            students.append(newStudent)
        }
    }

    @IBAction func reloadPressed(_ sender: Any) {
        offset = tableView.contentOffset.y
        tableView.reloadData()
        tableView.contentOffset.y = offset
    }
    
    @IBAction func scrollPressed(_ sender: Any) {
        // Nothing here
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath) as! StudentCell
        cell.configureCell(student: students[indexPath.row])
        return cell
    }

}

