//
//  ToolsCell.swift
//  Snapchat
//
//  Created by Fno Khalid on 10/04/1443 AH.
//

import UIKit

class ToolsCell: UITableViewCell {

    let toolName = UILabel()
    let toolImg = UIImageView()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupToolName()
        setuptoolImg()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupToolName(){
        addSubview(toolName)
        toolName.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        toolName.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            toolName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            toolName.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setuptoolImg(){
        addSubview(toolImg)
        toolImg.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            toolImg.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            toolImg.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }

}
