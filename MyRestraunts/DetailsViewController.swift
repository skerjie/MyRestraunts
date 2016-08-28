//
//  DetailsViewController.swift
//  MyRestraunts
//
//  Created by Andrei Palonski on 26.08.16.
//  Copyright © 2016 Andrei Palonski. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  
  @IBOutlet weak var resturantImageView: UIImageView!
  @IBOutlet weak var tableView: UITableView!
  var resturant: Restaurants!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //Важный пункт, об этом в видео не сказано!!!
    self.resturantImageView.image = UIImage(named: resturant.image)
    self.tableView.backgroundColor = UIColor(red: 250 / 255, green: 212 / 255, blue: 255 / 255, alpha: 1)
    self.tableView.tableFooterView = UIView(frame: CGRect.zero)
    self.tableView.separatorColor = UIColor(red: 252 / 255, green: 232 / 255, blue: 255 / 255, alpha: 1)
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DetailTableViewCell
    
    //    if indexPath.row == 0 {
    //    cell.keyLabel.text = "Название"
    //      cell.valueLabel.text = resturant.name
    //    }
    //    if indexPath.row == 1 {
    //      cell.keyLabel.text = "Тип"
    //      cell.valueLabel.text = resturant.type
    //    }
    //    if indexPath.row == 2 {
    //      cell.keyLabel.text = "Распололжение"
    //      cell.valueLabel.text = resturant.location
    //    }
    //    if indexPath.row == 3 {
    //      cell.keyLabel.text = "Был ли посещен"
    //      cell.valueLabel.text = resturant.isVisited
    //    }
    
    switch indexPath.row {
    case 0:
      cell.keyLabel.text = "Название"
      cell.valueLabel.text = resturant.name
    case 1:
      cell.keyLabel.text = "Тип"
      cell.valueLabel.text = resturant.type
    case 2:
      cell.keyLabel.text = "Распололжение"
      cell.valueLabel.text = resturant.location
    case 3:
      cell.keyLabel.text = "Был ли посещен"
    //  cell.valueLabel.text = resturant.isVisited ? "Да" : "Нет"
      
      if resturant.isVisited {
        cell.valueLabel.text = "Да"
      } else {
        cell.valueLabel.text = "Нет"
      }
      
    default:
      cell.keyLabel.text = ""
      cell.valueLabel.text = ""
    }
    
    cell.backgroundColor = UIColor.clear()
    
    return cell
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
