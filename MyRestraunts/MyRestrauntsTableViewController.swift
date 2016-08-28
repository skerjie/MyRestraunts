//
//  MyRestrauntsTableViewController.swift
//  MyRestraunts
//
//  Created by Andrei Palonski on 24.08.16.
//  Copyright © 2016 Andrei Palonski. All rights reserved.
//

import UIKit

class MyRestrauntsTableViewController: UITableViewController {
  
  var myRestaurant: [Restaurants] = [
    Restaurants(name: "Ogonёk Grill&Bar", type: "ресторан", location: "Уфа", image: "ogonek.jpg", isVisited: false),
    Restaurants(name: "Елу", type: "ресторан", location: "Уфа", image: "elu.jpg", isVisited: false),
    Restaurants(name: "Bonsai", type: "ресторан", location: "Уфа", image: "bonsai.jpg", isVisited: false),
    Restaurants(name: "Дастархан", type: "ресторан", location: "Уфа", image: "dastarhan.jpg", isVisited: false),
    Restaurants(name: "Индокитай", type: "ресторан", location: "Уфа", image: "indokitay.jpg", isVisited: false),
    Restaurants(name: "X.O", type: "ресторан-клуб", location: "Уфа", image: "x.o.jpg", isVisited: false),
    Restaurants(name: "Балкан Гриль", type: "ресторан", location: "Уфа", image: "balkan.jpg", isVisited: false),
    Restaurants(name: "Respublica", type: "ресторан", location: "Уфа", image: "respublika.jpg", isVisited: false),
    Restaurants(name: "Speak Easy", type: "ресторанный комплекс", location: "Уфа", image: "speakeasy.jpg", isVisited: false),
    Restaurants(name: "Morris Pub", type: "ресторан", location: "Уфа", image: "morris.jpg", isVisited: false),
    Restaurants(name: "Вкусные истории", type: "ресторан", location: "Уфа", image: "istorii.jpg", isVisited: false),
    Restaurants(name: "Классик", type: "ресторан", location: "Уфа", image: "klassik.jpg", isVisited: false),
    Restaurants(name: "Love&Life", type: "ресторан", location: "Уфа", image: "love.jpg", isVisited: false),
    Restaurants(name: "Шок", type: "ресторан", location: "Уфа", image: "shok.jpg", isVisited: false),
    Restaurants(name: "Бочка", type: "ресторан", location:  "Уфа", image: "bochka.jpg", isVisited: false)]
  
  //  var restaurantNames = ["Ogonёk Grill&Bar", "Елу", "Bonsai", "Дастархан", "Индокитай", "X.O", "Балкан Гриль", "Respublica", "Speak Easy", "Morris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"]
  //
  //  var restaurantImages = ["ogonek.jpg", "elu.jpg", "bonsai.jpg", "dastarhan.jpg", "indokitay.jpg", "x.o.jpg", "balkan.jpg", "respublika.jpg", "speakeasy.jpg", "morris.jpg", "istorii.jpg", "klassik.jpg", "love.jpg", "shok.jpg", "bochka.jpg"]
  //
  //  var restaurantType = ["ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан-клуб", "ресторан", "ресторан", "ресторанный комплекс", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан"]
  //
  //  var restaurantLocation = ["Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа"]
  //
  //  var restaurantAlreadyVisited = [Bool](repeating: false, count: 15)
  
  //  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  //    // создаем алерт контроллер
  //    let actionMenu = UIAlertController(title: nil, message: "Что делаем", preferredStyle: .actionSheet)
  //    //создаем действие для контроллера
  //    let cancelAction = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
  //    actionMenu.addAction(cancelAction)
  //    //действие я тут был
  //    let iHaveBeenThereAction = UIAlertAction(title: "Я тут был", style: .default, handler: {(action: UIAlertAction!) -> Void in
  //      let cell = tableView.cellForRow(at: indexPath)
  //      cell?.accessoryType = .checkmark
  //      self.restaurantAlreadyVisited[indexPath.row] = true
  //    })
  //
  //    //действие я тут не был
  //    let iHaveNeverBeenThereAction = UIAlertAction(title: "Я тут не был", style: .default, handler: {(action: UIAlertAction!) -> Void in
  //      let cell = tableView.cellForRow(at: indexPath)
  //      cell?.accessoryType = .none
  //      self.restaurantAlreadyVisited[indexPath.row] = false
  //    })
  //
  //
  //    let cell = tableView.cellForRow(at: indexPath)
  //
  //    if cell?.accessoryType == .checkmark {
  //      actionMenu.addAction(iHaveNeverBeenThereAction)
  //    } else {
  //      actionMenu.addAction(iHaveBeenThereAction)
  //    }
  //
  //    //создаем кнопку вызова
  //
  //    let callActionHandler = {(action: UIAlertAction!) -> Void in
  //      let warningMessage = UIAlertController(title: "Сервис недоступен", message: "В данный момент вызов не может быть выполнен", preferredStyle: .alert)
  //      let okAction = UIAlertAction(title: "ОК", style: .default, handler: nil)
  //      warningMessage.addAction(okAction)
  //      self.present(warningMessage, animated: true, completion: nil)
  //    }
  //
  //    let callAction = UIAlertAction(title: "Звоним 1234567", style: .default, handler: nil)
  //    actionMenu.addAction(callAction)
  //
  //    self.present(actionMenu, animated: true, completion: nil)
  //
  //    tableView.deselectRow(at: indexPath, animated: true)
  //  }
  
  //добавим действие для удаления ячейки
  override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    
    //    self.restaurantAlreadyVisited.remove(at: indexPath.row)
    //    self.restaurantType.remove(at: indexPath.row)
    //    self.restaurantNames.remove(at: indexPath.row)
    //    self.restaurantImages.remove(at: indexPath.row)
    //    self.restaurantLocation.remove(at: indexPath.row)
    //
    //    self.tableView.deleteRows(at: [indexPath], with: .fade)
  }
  
  override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
    let allSharedActions = UITableViewRowAction(style: .default, title: "Поделится") { (UITableViewRowAction, indexPath) -> Void in
      let allSharedActionsMenu = UIAlertController(title: nil, message: "Поделится через", preferredStyle: .actionSheet)
      
      let emailShareAction = UIAlertAction(title: "Email", style: .default, handler: nil)
      let facebookShareAction = UIAlertAction(title: "Facebook", style: .default, handler: nil)
      let vkShareAction = UIAlertAction(title: "Vkontakte", style: .default, handler: nil)
      let cancelShareAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
      
      allSharedActionsMenu.addAction(emailShareAction)
      allSharedActionsMenu.addAction(facebookShareAction)
      allSharedActionsMenu.addAction(vkShareAction)
      allSharedActionsMenu.addAction(cancelShareAction)
      
      self.present(allSharedActionsMenu, animated: true, completion: nil)
      
    }
    
    // создаем кнопку Удалить и добавляем в возвращаемый массив объектов deleteActions
    let deleteActions = UITableViewRowAction(style: .default, title: "Удалить") { (UITableViewRowAction, indexPath) -> Void in
      
      self.myRestaurant.remove(at: indexPath.row)
      
      //      self.restaurantType.remove(at: indexPath.row)
      //      self.restaurantNames.remove(at: indexPath.row)
      //      self.restaurantImages.remove(at: indexPath.row)
      //      self.restaurantLocation.remove(at: indexPath.row)
      
      self.tableView.deleteRows(at: [indexPath], with: .fade)
      
    }
    
    deleteActions.backgroundColor = UIColor.red()
    allSharedActions.backgroundColor = UIColor.green()
    
    return [deleteActions, allSharedActions]
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return myRestaurant.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let  cellIdentifier = "Cell"
    let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MyRestrauntsTableViewCell
    
    // Configure the cell...
    
    cell.thumbnailImageView.image = UIImage(named: myRestaurant[indexPath.row].image)
    cell.nameLabel.text = myRestaurant[indexPath.row].name
    cell.typeLabel.text = myRestaurant[indexPath.row].type
    cell.locationLabel.text = myRestaurant[indexPath.row].location
    cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.height/2
    cell.thumbnailImageView.clipsToBounds = true
    
    if myRestaurant[indexPath.row].isVisited {
      cell.accessoryType = .checkmark
    } else {
      cell.accessoryType = .none
    }
    cell.tintColor = UIColor.red()
    
    return cell
  }
  
  override func prefersStatusBarHidden() -> Bool {
    return true
  }
  
  
  /*
   // Override to support conditional editing of the table view.
   override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
   // Return false if you do not want the specified item to be editable.
   return true
   }
   */
  
  /*
   // Override to support editing the table view.
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
   if editingStyle == .delete {
   // Delete the row from the data source
   tableView.deleteRows(at: [indexPath], with: .fade)
   } else if editingStyle == .insert {
   // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
   }
   }
   */
  
  /*
   // Override to support rearranging the table view.
   override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
   
   }
   */
  
  /*
   // Override to support conditional rearranging of the table view.
   override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
   // Return false if you do not want the item to be re-orderable.
   return true
   }
   */
  
  
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  
  override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
    
    if segue.identifier == "showDetailsSegue" {
      if let indexPath = self.tableView.indexPathForSelectedRow {
        let destinationVC = segue.destinationViewController as! DetailsViewController
        destinationVC.resturantImage = self.myRestaurant[indexPath.row].image  
      }
    }
    
  }
  
  
}
