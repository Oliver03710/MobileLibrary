//
//  WebViewController.swift
//  MobileLibrary
//
//  Created by Junhee Yoon on 2022/07/21.
//

import UIKit

class WebViewController: UIViewController {
   
    // MARK: - Properties
    
    static let identifier = "WebViewController"
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureNavi()
    }
    

    // MARK: - Helper Functions
    
    func configureNavi() {
        navigationItem.title = "웹 화면"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonTapped))
    }
    
    @objc func closeButtonTapped() {
//        self.navigationController?.popViewController(animated: true)
        
        // 2페이지 전으로 돌아가기
        guard let viewControllers: [UIViewController] = self.navigationController?.viewControllers as? [UIViewController] else { return }
        print(viewControllers.count)
        self.navigationController?.popToViewController(viewControllers[viewControllers.count - 3], animated: true)
    }
    

    
    
    
    

}
