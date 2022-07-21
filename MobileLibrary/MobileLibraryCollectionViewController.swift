//
//  MobileLibraryCollectionViewController.swift
//  MobileLibrary
//
//  Created by Junhee Yoon on 2022/07/20.
//

import UIKit

class MobileLibraryCollectionViewController: UICollectionViewController {
    
    // MARK: - Properties
    
    let bookData = BookInfo()
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCells()
        configureNavi()
    }
    
    
    // MARK: - Helper Functions
    
    func configureCells() {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 3)
        
        layout.itemSize = CGSize(width: width / 2, height: (width / 2) * 1.2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        
        collectionView.collectionViewLayout = layout
    }
    
    func configureNavi() {
        navigationItem.title = "모바일 도서관"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(magnifyButtonTapped))
    }
    
    @objc func magnifyButtonTapped() {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: LookUpViewController.identifier) as? LookUpViewController else { return }
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }

    
    // MARK: - Collection Views Functions
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookData.book.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MobileLibraryCollectionViewCell", for: indexPath) as! MobileLibraryCollectionViewCell
    
        let data = bookData.book[indexPath.row]
        cell.configureBookCells(data: data)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        guard let vc = sb.instantiateViewController(withIdentifier: DetailViewController.identifier) as? DetailViewController else { return }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
