//
//  HelloViewController.swift
//  UNIVERSITY
//
//  Created by UjiN on 4/9/20.
//  Copyright © 2020 UjiN. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

	@IBOutlet weak var helloLabel: UILabel!
	
	@IBOutlet weak var segment: UISegmentedControl!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
		self.navigationController?.navigationBar.shadowImage = UIImage()
		self.navigationController?.navigationBar.isTranslucent = true
		self.navigationController?.view.backgroundColor = .clear
	}
	@IBAction func darkLightChange(_ sender: UISegmentedControl) {
		switch segment.selectedSegmentIndex
		   {
		   case 0:
			   view.window?.overrideUserInterfaceStyle = .light
		   case 1:
			   view.window?.overrideUserInterfaceStyle = .dark
		   default:
			   break
		   }
	}
	
	@IBAction func logOut(_ sender: UIButton) {
		performSegue(withIdentifier: "logOutSegue", sender: nil)
		UserDefaults.standard.set(false, forKey: "login")
	}
}
