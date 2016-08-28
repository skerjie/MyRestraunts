//
//  DetailsViewController.swift
//  MyRestraunts
//
//  Created by Andrei Palonski on 26.08.16.
//  Copyright © 2016 Andrei Palonski. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

  
  @IBOutlet weak var resturantImageView: UIImageView!
  var resturantImage: String!
  
    override func viewDidLoad() {
        super.viewDidLoad()

      //Важный пункт, об этом в видео не сказано!!!
      self.resturantImageView.image = UIImage(named: resturantImage)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
