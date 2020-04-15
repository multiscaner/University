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
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
		self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
		self.navigationController?.navigationBar.shadowImage = UIImage()
		self.navigationController?.navigationBar.isTranslucent = true
		self.navigationController?.view.backgroundColor = .clear
		
	}
	
	@IBAction func logOut(_ sender: UIButton) {
		performSegue(withIdentifier: "logOutSegue", sender: nil)
		UserDefaults.standard.set(false, forKey: "login")
	}
}
