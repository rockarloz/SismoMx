//
//  CenterTableViewCell.swift
//  Sismo
//  @rockarloz
//  Created by Carlos Castellanos on 21/09/17.
//  Copyright © 2017 huerdo. All rights reserved.
//

import UIKit

class CenterTableViewCell: UITableViewCell {
    
    var mainView = UIView()
    var placeLbl = UILabel()
    var requestLbl = UILabel()
    var requestData = UILabel()
    var receiveLbl = UILabel()
    var receiveData = UILabel()
    var addressLbl = UILabel()
    var addressData = UILabel()
    var zoneData = UILabel()
    var lastUpdateLbl = UILabel()
    var lastUpdateData = UILabel()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(mainView)
        self.contentView.backgroundColor = Colors.gray
        mainView.addSubview(placeLbl)
        mainView.addSubview(requestLbl)
        mainView.addSubview(requestData)
        mainView.addSubview(receiveLbl)
        mainView.addSubview(receiveData)
        mainView.addSubview(addressLbl)
        mainView.addSubview(addressData)
        mainView.addSubview(zoneData)
        mainView.addSubview(lastUpdateLbl)
        mainView.addSubview(lastUpdateData)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    

    func useData(_ center:NSDictionary) {
    
        mainView.layer.masksToBounds = true;
        
        mainView.frame = CGRect(x: 10, y: 5, width: self.frame.size.width - 20 , height: self.frame.size.height - 10 )
        mainView.backgroundColor = UIColor.white
        mainView.layer.cornerRadius = 5
        
        placeLbl.frame = UIElements.createFrame(x: 5, y: 10, w: 100, h: 100)
        placeLbl.text = center.object(forKey: "LUGAR") as? String
        placeLbl.sizeToFit()
        
        requestLbl.frame = UIElements.createFrame(x: 5, y: placeLbl.frame.size.height + placeLbl.frame.origin.y + 5, w:  self.frame.size.width - 20, h: 100)
        requestLbl.text  = "Pidiendo"
        requestLbl.textColor = Colors.red
        requestLbl.sizeToFit()
        
        requestData.frame = UIElements.createFrame(x: 5, y: requestLbl.frame.size.height + requestLbl.frame.origin.y + 5, w:  self.frame.size.width - 20 , h: 100)
        requestData.text = center.object(forKey: "NECESITAN") as? String
        requestData.numberOfLines = 10
        requestData.sizeToFit()
        
        
        receiveLbl.frame = UIElements.createFrame(x: 5, y: requestData.frame.size.height + requestData.frame.origin.y + 5, w:  self.frame.size.width - 20, h: 100)
        receiveLbl.text  = "Reciben"
        receiveLbl.textColor = Colors.green
        receiveLbl.sizeToFit()
        
        receiveData.frame = UIElements.createFrame(x: 5, y: receiveLbl.frame.size.height + receiveLbl.frame.origin.y + 5, w:  self.frame.size.width - 20 , h: 100)
        receiveData.text = center.object(forKey: "RECIBEN") as? String
        receiveData.numberOfLines = 10
        receiveData.sizeToFit()
        
        addressLbl.frame = UIElements.createFrame(x: 5, y: receiveData.frame.size.height + receiveData.frame.origin.y + 5, w:  self.frame.size.width - 20, h: 100)
        addressLbl.text  = "Dirección"
        addressLbl.textColor = Colors.red
        addressLbl.sizeToFit()
        
        addressData.frame = UIElements.createFrame(x: 5, y: addressLbl.frame.size.height + addressLbl.frame.origin.y + 5, w:  self.frame.size.width - 20 , h: 100)
        addressData.text = center.object(forKey: "DIRECCION") as? String
        addressData.numberOfLines = 10
        addressData.sizeToFit()
        
        zoneData.frame = UIElements.createFrame(x: 5, y: addressData.frame.size.height + addressData.frame.origin.y + 5, w:  self.frame.size.width - 20 , h: 100)
        zoneData.text = center.object(forKey: "ZONA") as? String
        zoneData.numberOfLines = 10
        zoneData.sizeToFit()
        
        lastUpdateLbl.frame = UIElements.createFrame(x: 5, y: zoneData.frame.size.height + zoneData.frame.origin.y + 5, w:  self.frame.size.width - 20, h: 100)
        lastUpdateLbl.text  = "Última actualización"
        lastUpdateLbl.textColor = Colors.red
        lastUpdateLbl.sizeToFit()
        
        lastUpdateData.frame = UIElements.createFrame(x: 5, y: lastUpdateLbl.frame.size.height + lastUpdateLbl.frame.origin.y + 5, w:  self.frame.size.width - 20 , h: 100)
        lastUpdateData.text = center.object(forKey: "ACTUALIZACION") as? String
        lastUpdateData.numberOfLines = 10
        lastUpdateData.sizeToFit()
    }
}
