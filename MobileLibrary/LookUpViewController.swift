//
//  LookUpViewController.swift
//  MobileLibrary
//
//  Created by Junhee Yoon on 2022/07/21.
//

import UIKit

class LookUpViewController: UIViewController {

    // MARK: - Properties
    
    static let identifier = "LookUpViewController"
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavi()
    }
    

    // MARK: - Helper Functions
    
    func configureNavi() {
        navigationItem.title = "검색"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonTapped))
    }
    
    @objc func closeButtonTapped() {
        self.dismiss(animated: true)
    }
}
