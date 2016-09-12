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
  @IBAction func Close(segue: UIStoryboardSegue) {
  }
  
  
  var resturant: Restaurants!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //Важный пункт, об этом в видео не сказано!!!
    self.resturantImageView.image = UIImage(named: resturant.image)
    self.tableView.backgroundColor = UIColor(red: 240 / 255, green: 240 / 255, blue: 240 / 255, alpha: 1.0)
    self.tableView.tableFooterView = UIView(frame: CGRect.zero)
    self.tableView.separatorColor = UIColor(red: 227 / 255, green: 227 / 255, blue: 228 / 255, alpha: 1.0)
    
    title = self.resturant.name
    
    // задаем автоматическое изменение размеров ячейки
    self.tableView.estimatedRowHeight = 44
    self.tableView.rowHeight = UITableViewAutomaticDimension
    
    // Do any additional setup after loading the view.
  }
  
  // В детальном виде запрещаем скрывать navigationbar
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    self.navigationController?.hidesBarsOnSwipe = false
    self.navigationController?.setToolbarHidden(false, animated: true)
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
    
    cell.backgroundColor = UIColor.clear
    
    return cell
  }
  
  // говорим ячейке с индексом 2 (location) при нажатии переходить на viewController с картами
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if indexPath.row == 2 {
      self.performSegue(withIdentifier: "showTheMap", sender: nil)
    }
    tableView.deselectRow(at: indexPath, animated: true)
  }
  
  
  func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "showTheMap" {
    let destinationVC = segue.destination as! MapRestaurantViewViewController
      destinationVC.resturant = resturant
    }
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
