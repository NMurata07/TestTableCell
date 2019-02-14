//
//  ViewController.swift
//  TestTableCell
//
//  Created by Nobuharu Murata on 2019/02/14.
//  Copyright © 2019 Nobuharu Murata. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var testcell: TestTableCell!
    
    let image1:UIImage = UIImage(named:"hogehoge.jpg")!
    var data: [[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.register(UINib(nibName: "TestTableCell", bundle: nil), forCellReuseIdentifier: "TestTableCell")
        
        for i in 0..<10 {
            data.append([i.description, "hogehoge.jpg"])
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableCell") as! TestTableCell

        cell.setData(str: data[(indexPath.row)][0], img: UIImage(named: data[(indexPath.row)][1])!)
        
        return cell
    }

}

