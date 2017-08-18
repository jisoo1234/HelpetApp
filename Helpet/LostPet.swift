//
//  LostPet.swift
//  Helpet
//
//  Created by ktds 21 on 2017. 8. 18..
//  Copyright © 2017년 CJ, Inc. All rights reserved.
//

import Foundation
import UIKit

class LostPet{

    var name:String  //이름
    var sex:String    //성별
    var kind:String?  //품종
    var age:Int?     //나이
    var place:String  // 잃어버린곳 (이건gps좌표로 변경필요)
    var rmk:String?  //특징 및 비고
    var phone:Int?  //전화번호
    var petimage:UIImage?  //사진
    var lostdate:String // 실종일자
    
    init(name:String,
         sex:String,
         kind:String?,
         age:Int?,
         place:String,
         rmk:String,
         phone:Int?,
         petimage:UIImage?,
        lostdate:String){
    
        self.name = name
        self.sex = sex
        self.kind = kind
        self.age = age
        self.place = place
        self.rmk = rmk
        self.phone = phone
        self.petimage = petimage
        self.lostdate = lostdate
        
    }
    
}
