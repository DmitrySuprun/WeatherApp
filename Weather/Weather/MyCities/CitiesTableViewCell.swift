//
//  CitiesTableViewCell.swift
//  Weather
//
//  Created by Дмитрий Супрун on 21.04.22.
//

import UIKit

class CitiesTableViewCell: UITableViewCell {
    
    @IBOutlet var cityTitleLable: UILabel! {
        didSet {
            self.cityTitleLable.textColor = .yellow
        }
    }
    @IBOutlet var cityEmblemView: UIImageView! {
        didSet {
            self.cityEmblemView.layer.borderColor = UIColor.white.cgColor
            self.cityEmblemView.layer.borderWidth = 2
        }
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        cityEmblemView.clipsToBounds = true
        cityEmblemView.layer.cornerRadius = cityEmblemView.frame.width / 2
    }
    
    
    override func prepareForReuse() {
        
        super.prepareForReuse()
        self.cityTitleLable.text = nil
        self.cityEmblemView.image = nil
    }
    
    func configure (city: String, emblem: UIImage) {
            
            self.cityEmblemView.image = emblem
            self.cityTitleLable.text = city
            
            self.backgroundColor = .systemBlue
        }
}
