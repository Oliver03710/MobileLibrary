//
//  MobileLibraryCollectionViewCell.swift
//  MobileLibrary
//
//  Created by Junhee Yoon on 2022/07/20.
//

import UIKit

class MobileLibraryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var publisherLabel: UILabel!
    @IBOutlet weak var backImageView: UIImageView!
    
    func configureBookCells(data: Books) {
//        baseView.backgroundColor = .random()
//        baseView.clipsToBounds = true
//        baseView.layer.cornerRadius = 20
        baseView.backgroundColor = .clear
        
        // 책 이미지를 블러처리해서 배경으로 만들어주기
        backImageView.backgroundColor = .clear
        backImageView.image = UIImage(named: data.title.components(separatedBy: [" ", ","]).joined())
        backImageView.contentMode = .scaleAspectFill
        backImageView.clipsToBounds = true
        backImageView.layer.cornerRadius = 20
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        backImageView.insertSubview(blurView, at: 0)
        
        blurView.anchor(top: backImageView.topAnchor, left: backImageView.leftAnchor, bottom: backImageView.bottomAnchor, right: backImageView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
//        NSLayoutConstraint.activate([
//          blurView.topAnchor.constraint(equalTo: backImageView.topAnchor),
//          blurView.leadingAnchor.constraint(equalTo: backImageView.leadingAnchor),
//          blurView.heightAnchor.constraint(equalTo: backImageView.heightAnchor),
//          blurView.widthAnchor.constraint(equalTo: backImageView.widthAnchor)
//        ])
        
        bookImage.image = UIImage(named: data.title.components(separatedBy: [" ", ","]).joined())
        
        bookTitleLabel.text = data.title
        bookTitleLabel.numberOfLines = 0
        bookTitleLabel.textAlignment = .center
        
        authorLabel.text = data.author
        authorLabel.textAlignment = .center
        
        publisherLabel.text = data.publisher
    }
    
}
