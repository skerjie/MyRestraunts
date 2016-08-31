//
//  QuickReviewViewController.swift
//  MyRestraunts
//
//  Created by Andrei Palonski on 31.08.16.
//  Copyright © 2016 Andrei Palonski. All rights reserved.
//

import UIKit

class QuickReviewViewController: UIViewController {
  
  @IBOutlet weak var backgrounImageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    var darkBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
    var darkBlurEffectView = UIVisualEffectView(effect: darkBlurEffect)
    darkBlurEffectView.frame = view.bounds
    backgrounImageView.addSubview(darkBlurEffectView)
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
