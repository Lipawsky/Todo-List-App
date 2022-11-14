//
//  CustomTableViewCell.swift
//  todonew

//Filename: todo
//Authors' name: Pengfei Du, Yingda Zhang, Abdul Ahad Khan
//StudentID: 301276081, 301275707, 301313321
//Date: 13 Nov 2022
//Date last modified : 13 Nov 2022
//App description:  a easy Todo List APP

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var subLabel:UILabel!
    @IBOutlet weak var _switch:UISwitch!
    @IBOutlet weak var editButton:UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
