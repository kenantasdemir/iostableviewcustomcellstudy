//
//  ViewController.swift
//  iostableviewcustomcellstudy
//
//  Created by kenan on 24.08.2024.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var usersTableView: UITableView!
    var userList = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usersTableView.delegate = self
        usersTableView.dataSource = self
        
        let k1 = User(user_id: 1,user_name: "Ahmet",user_phone: "4435345")
        let k2 = User(user_id: 2,user_name: "Fatih",user_phone: "4543534")
        let k3 = User(user_id: 3,user_name: "Süleyman",user_phone: "13223132")
        let k4 = User(user_id: 4,user_name: "Uğur",user_phone: "097794")
        let k5 = User(user_id: 5,user_name: "Ali",user_phone: "09870798")
        let k6 = User(user_id: 6,user_name: "Mehmet",user_phone: "577474")
        
        userList.append(k1)
        userList.append(k2)
        userList.append(k3)
        userList.append(k4)
        userList.append(k5)
        userList.append(k6)
    }


}


extension ViewController:UITableViewDelegate,UITableViewDataSource,CustomCellProtocol{
    
    func theButtonOnTheCellClicked(indexPath: IndexPath) {
        print("Button Clicked VC \(indexPath.row)")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = userList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellname", for: indexPath) as! CustomCell
        cell.customCellLabel.text = user.user_name
        cell.cellProtocol = self
        cell.indexPath = indexPath
        return cell
    }
    
}
