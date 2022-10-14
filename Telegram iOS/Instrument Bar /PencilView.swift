//
//  WhitePen.swift
//  Telegram iOS
//
//  Created by User 2 on 14/10/22.
//

import UIKit

class PencilView: UIView{
    
    lazy var pencilImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "pencil")
        
        return image
    }()
    
    lazy var tipImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Images.pencil_tip.image
        view.contentMode = .scaleAspectFill
        
        return view
    }()
    
    lazy var whiteRectangleleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 1.0
        view.clipsToBounds = true
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
//        drawTriangle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func drawTriangle(){
//        let path = UIBezierPath()
//
//        path.move(to: CGPoint(x: 500, y: 80))
//        path.addLine(to: CGPoint(x: 350, y: 300))
//        path.addLine(to: CGPoint(x: 600, y: 300))
//        path.close()
//
//        UIColor.red.setStroke()
//        path.lineWidth = 5
//
//        UIColor.red.setFill()
//        path.fill()
//    }
    
    func setupSubviews(){
        addSubview(pencilImageView)
        addSubview(tipImageView)
        addSubview(whiteRectangleleView)
        
        
        NSLayoutConstraint.activate([
            pencilImageView.topAnchor.constraint(equalTo: topAnchor),
            pencilImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            pencilImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            pencilImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            tipImageView.topAnchor.constraint(equalTo: topAnchor),
            tipImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tipImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tipImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            whiteRectangleleView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: universalWidth(1.5)),
            whiteRectangleleView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -universalWidth(1.5)),
            whiteRectangleleView.topAnchor.constraint(equalTo: topAnchor,constant: universalHeight(35.0)),
            whiteRectangleleView.heightAnchor.constraint(equalToConstant: universalHeight(3.0))
            
        ])
    }
}
