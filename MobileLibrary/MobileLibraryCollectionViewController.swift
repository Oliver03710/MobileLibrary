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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCells()
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
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookData.book.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MobileLibraryCollectionViewCell", for: indexPath) as! MobileLibraryCollectionViewCell
    
        let data = bookData.book[indexPath.row]
        cell.configureBookCells(data: data)
        
        return cell
    }
    

}
