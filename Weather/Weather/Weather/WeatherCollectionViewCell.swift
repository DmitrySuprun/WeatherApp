//
//  WeatherCollectionViewCell.swift
//  Weather
//
//  Created by Дмитрий Супрун on 9.04.22.
//

import UIKit

class WeatherCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var weatherTemperature: UILabel! {
        didSet {
            weatherTemperature.backgroundColor = .systemBlue
            weatherTemperature.clipsToBounds = true
            weatherTemperature.layer.cornerRadius = weatherTemperature.frame.width / 2
            weatherTemperature.layer.borderWidth = 2
            weatherTemperature.layer.borderColor = UIColor.systemBlue.cgColor
        }
    }
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var shadowView: UIView! {
        didSet {
            shadowView.layer.shadowOffset = .zero
            shadowView.layer.shadowOpacity = 0.75
            shadowView.layer.shadowRadius = 10
            shadowView.layer.shadowColor = UIColor.black.cgColor
            shadowView.backgroundColor = .clear
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.shadowView.layer.shadowPath = UIBezierPath(ovalIn: self.shadowView.bounds).cgPath
    }
    
}
