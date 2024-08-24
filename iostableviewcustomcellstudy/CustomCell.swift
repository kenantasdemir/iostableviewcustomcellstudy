//
//  CustomCell.swift
//  iostableviewcustomcellstudy
//
//  Created by kenan on 24.08.2024.
//

import UIKit

protocol CustomCellProtocol{
    func theButtonOnTheCellClicked(indexPath:IndexPath)
}

class CustomCell: UITableViewCell {
    

    @IBOutlet weak var customCellLabel: UILabel!
    
    var cellProtocol:CustomCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        cellProtocol?.theButtonOnTheCellClicked(indexPath: indexPath!)
    }
}
