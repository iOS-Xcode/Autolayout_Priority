//
//  MyTableViewCell.swift
//  Dynamic_TableView
//
//  Created by Seokhyun Kim on 2022-06-01.
//

import Foundation
import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userProfileImg: UIImageView!
    @IBOutlet weak var userContentLabel: UILabel!
    
    //셀이 랜더링(그릴 때) 될때
    override func awakeFromNib() {
        super.awakeFromNib()
        print("MyTableViewCell - awakeFromNib() called")
        userProfileImg.layer.cornerRadius = userProfileImg.frame.width / 2
        
    }
}
