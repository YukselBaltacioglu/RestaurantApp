//
//  ImageCell.swift
//  RestaurantMenu
//
//  Created by Yüksel Baltacıoğlu on 4.11.2023.
//

import UIKit

class ImageCell: UITableViewCell {
    
    var foodImageView = UIImageView()
    var foodImageTitleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(foodImageView)
        addSubview(foodImageTitleLabel)
        
        configureImageView()
        configureTitleLabel()
    
        setImageConstraints()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented.")
    }
    
    func set(image: Food){
        foodImageView.image = image.image
        foodImageTitleLabel.text = image.title
    }
    
    func configureImageView(){
        foodImageView.layer.cornerRadius = 10
        foodImageView.clipsToBounds = true
    }
    
    func configureTitleLabel(){
        foodImageTitleLabel.numberOfLines = 0
        foodImageTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints(){
        foodImageView.translatesAutoresizingMaskIntoConstraints = false
        foodImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        foodImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        foodImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        foodImageView.widthAnchor.constraint(equalTo: foodImageView.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    func setTitleLabelConstraints(){
        foodImageTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        foodImageTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        foodImageTitleLabel.leadingAnchor.constraint(equalTo: foodImageView.trailingAnchor, constant: 20).isActive = true
        foodImageTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        foodImageTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
}
