//
//  TestTableCell.swift
//  TestTableCell
//
//  Created by Nobuharu Murata on 2019/02/14.
//  Copyright © 2019 Nobuharu Murata. All rights reserved.
//

import UIKit

class TestTableCell: UITableViewCell {
    
    @IBOutlet weak var sampleImageView: UIImageView!
    @IBOutlet weak var sampleTextView: UITextView!
    
    func setData(str :String, img: UIImage)
    {
        self.sampleTextView.text = str
        self.sampleImageView.image = img
    }
}
