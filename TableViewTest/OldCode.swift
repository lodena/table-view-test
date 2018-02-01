//
//  OldCode.swift
//  TableViewTest
//
//  Created by Jesus Lopez de Nava on 1/31/18.
//  Copyright © 2018 Jesus Lopez de Nava. All rights reserved.
//


//import UIKit
//
//class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//
//
//    @IBOutlet weak var tableView: UITableView!
//
//    var students = [Student]()
//    var pictures = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"]
//    var names = ["pedro", "marta", "jose", "elena", "andy", "jenny", "luis", "ana", "betty", "mario", "antonieta", "horacio"]
//    var lastnames = ["lopez", "manriquez", "herrera", "acuna", "solis", "duarte", "ortiz", "borges", "ramirez", "esquivel", "chavez", "sosa"]
//
//    var offset: CGFloat!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.rowHeight = 115
//
//        for i in 0...11 {
//            let newStudent = Student(picture: pictures[i], name: names[i], lastname: lastnames[i])
//            students.append(newStudent)
//        }
//    }
//
//    @IBAction func reloadPressed(_ sender: Any) {
//
//        //        myOffset = tableView.contentOffset
//        //        print("Before reload = \(myOffset.y)")
//
//
//
//        //self.cell = 115 * CGFloat(n!)
//
//        offset = tableView.contentOffset.y
//        print(offset)
//        tableView.reloadData()
//
//
//
//        //        let topCellIndexPath = tableView.indexPathsForVisibleRows![0]
//        //        tableView.scrollToRow(at: topCellIndexPath, at: .top, animated: false)
//
//        //        let intertableOffset = tableView.contentOffset
//        //        print("Inter reload = \(intertableOffset.y)")
//
//        //tableView.setContentOffset(contentOffset, animated: true)
//
//        //myOffset.y = myOffset.y + 100
//        //tableView.contentOffset = myOffset
//    }
//
//    @IBAction func scrollPressed(_ sender: Any) {
//
//        print(offset)
//        tableView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1), animated: false)
//
//        //tableView.contentOffset.y = offset - 10
//
//
//        //tableView.setContentOffset(CGPoint(x: 0.0, y: 0.0), animated: true)
//        // IndexPath(row: 0, section: 0)
//        //
//        //
//
//
//
//
//        //        let tableOffset = tableView.contentOffset
//        //        print("After reload = \(tableOffset.y)")
//        //
//        //let indexPath = IndexPath(row: 3, section: 0)
//        //tableView.scrollToRow(at: indexPath, at: .top, animated: false)
//
//        //        tableView.contentOffset
//        //        print(contentOffset.x)
//        //        print(contentOffset.y)
//        //
//        //        print(contentOffset.x)
//        //        print(contentOffset.y)
//    }
//
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return students.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath) as! StudentCell
//
//        cell.configureCell(student: students[indexPath.row])
//
//        return cell
//
//    }
//
//}
//
////class MyTableView: UITableView {
////
////    override func reloadData() {
////        let offset = contentOffset
////        super.reloadData()
////        contentOffset = offset
////    }
////}


