//
//  DetailViewController.swift
//  MobileLibrary
//
//  Created by Junhee Yoon on 2022/07/21.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - Properties
    
    static let identifier = "DetailViewController"
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureNavi()
    }
    

    // MARK: - Helper Functions
    
    func configureNavi() {
        navigationItem.title = "상세화면"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonTapped))
    }
    
    @objc func closeButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    

    
    
    
    

}
