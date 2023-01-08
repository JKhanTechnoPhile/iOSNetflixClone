//
//  TileCollectionViewCell.swift
//  Netflix Clone
//
//  Created by Javeed Khan H on 01/01/23.
//

import UIKit
import SDWebImage

class TileCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TileCollectionViewCell"
    
    private let posterImageView: UIImageView = {
       
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    public func configure(with model: String) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500\(model)") else {return}
        posterImageView.sd_setImage(with: url, completed: nil)
    }
}
