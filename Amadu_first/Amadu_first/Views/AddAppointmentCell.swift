//
//  AddAppointmentCell.swift
//  Amadu_first
//
//  Created by once on 04/04/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class AddAppointmentCell: UITableViewCell {
    
    var tempLabel = UILabel()
    var timeLabel = UILabel()
    var personnelLabel = UILabel()
    var addressLabel = UILabel()
    
    let timeImage : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "clock.png"))
        //this enables autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let personImage : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "user_image"))
//        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    let mapPinImage : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "mapPin"))
//        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(tempLabel)
        
        addSubview(timeLabel)
        addSubview(personnelLabel)
        addSubview(addressLabel)
        
        
        addSubview(timeImage)
        addSubview(personImage)
        addSubview(mapPinImage)
        
        configureLabel()
        setLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set2(data: AddressData){
        tempLabel.text = data.title
        timeLabel.text = data.time
        personnelLabel.text = data.personnel
        addressLabel.text = data.address
    }
    
    func configureLabel(){
        tempLabel.numberOfLines = 0
        timeLabel.numberOfLines = 0
        personnelLabel.numberOfLines = 0
        addressLabel.numberOfLines = 0
        
        tempLabel.adjustsFontSizeToFitWidth = true
        timeLabel.adjustsFontSizeToFitWidth = true
        personnelLabel.adjustsFontSizeToFitWidth = true
        addressLabel.adjustsFontSizeToFitWidth = true
        
    }
    
    
    
    func setLabelConstraints(){
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
        tempLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12).isActive = true
        tempLabel.heightAnchor.constraint(equalToConstant: 48).isActive = true
        tempLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        timeImage.translatesAutoresizingMaskIntoConstraints = false
        timeImage.topAnchor.constraint(equalTo: tempLabel.bottomAnchor).isActive = true
        timeImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12).isActive = true
        timeImage.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.topAnchor.constraint(equalTo: tempLabel.bottomAnchor).isActive = true
        timeLabel.leadingAnchor.constraint(equalTo: timeImage.trailingAnchor).isActive = true
        timeLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        personImage.translatesAutoresizingMaskIntoConstraints = false
        personImage.topAnchor.constraint(equalTo: tempLabel.bottomAnchor).isActive = true
        personImage.leadingAnchor.constraint(equalTo: timeLabel.trailingAnchor, constant: 20).isActive = true
        personImage.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        personnelLabel.translatesAutoresizingMaskIntoConstraints = false
        personnelLabel.topAnchor.constraint(equalTo: tempLabel.bottomAnchor).isActive = true
        personnelLabel.leadingAnchor.constraint(equalTo: personImage.trailingAnchor).isActive = true
        personnelLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        mapPinImage.translatesAutoresizingMaskIntoConstraints = false
        mapPinImage.topAnchor.constraint(equalTo: tempLabel.bottomAnchor).isActive = true
        mapPinImage.leadingAnchor.constraint(equalTo: personnelLabel.trailingAnchor, constant: 20).isActive = true
        mapPinImage.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        addressLabel.topAnchor.constraint(equalTo: tempLabel.bottomAnchor).isActive = true
        addressLabel.leadingAnchor.constraint(equalTo: mapPinImage.trailingAnchor).isActive = true
        addressLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    }
    
    
}
