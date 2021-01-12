//
//  CustomMarkerView.swift
//  DemoMap
//
//  Created by MBA0052 on 1/11/21.
//
import UIKit
import Foundation

class CustomMarkerView: UIView {
    
    var imageName: String = ""
    init(frame: CGRect, imageName: String) {
        super.init(frame: frame)
        self.imageName = imageName
        setupViews()
    }
    
    func setupViews() {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(imgView)
        imgView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imgView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imgView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imgView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        imgView.image = UIImage(named: imageName)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
