//
//  HelpetTableViewController.swift
//  Helpet
//
//  Created by ktds 21 on 2017. 8. 18..
//  Copyright © 2017년 CJ, Inc. All rights reserved.
//

import UIKit
import Foundation

class HelpetTableViewController: UITableViewController {

    // 리스트에 뿌릴 배열선언과 생성
    var pets:[LostPet] = Array()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pet1 = LostPet(name: "진돌이",
                           sex: "수컷",
                           kind: "진도믹스",
                           age: 1,
                           place: "방배동 서울고등학교 사거리",
                           rmk: "사람을 잘 따름, 귀 뒤 검은색 반점이 있음, 흰색, 진돗개",
                           phone: 01012346541,
                           petimage: UIImage(named:"dog1")!,
                           lostdate: "2017-08-01" )
        
        let pet2 = LostPet(name: "호이",
                           sex: "수컷",
                           kind: "웰시코기",
                           age: 1,
                           place: "길음동 현대아파트 3단지",
                           rmk: "한쪽다리를 절음(수술한 흔적)",
                           phone: 01012346541,
                           petimage: UIImage(named:"dog2")!,
                           lostdate: "2017-08-03" )
        
        let pet3 = LostPet(name: "봉봉이",
                           sex: "암컷",
                           kind: "웰시코기",
                           age: 3,
                           place: "군자동 어린이대공원",
                           rmk: "등에 갈색 털이 하트모양으로 나있음, 앞니가 빠져있음",
                           phone: 01012346541,
                           petimage: UIImage(named:"dog3")!,
                           lostdate: "2017-07-13" )
        
        let pet4 = LostPet(name: "뚜이",
                           sex: "수컷",
                           kind: "말티즈",
                           age: 4,
                           place: "송파구 올림픽공원",
                           rmk: "앞발톱은 검은색, 뒷발톱은 흰색임",
                           phone: 01012346541,
                           petimage: UIImage(named:"dog4")!,
                           lostdate: "2017-08-17" )
        
        let pet5 = LostPet(name: "맥스",
                           sex: "암컷",
                           kind: "골든리트리버",
                           age: 5,
                           place: "후암동 용산고등학교 사거리",
                           rmk: "꼬리가 귀보다 짧음, 건치미남, 치아가 많이있음",
                           phone: 01012346541,
                           petimage: UIImage(named:"dog5")!,
                           lostdate: "2017-06-30" )

       
        self.pets.append(pet1)
        self.pets.append(pet2)
        self.pets.append(pet3)
        self.pets.append(pet4)
        self.pets.append(pet5)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    
    // 테이블뷰 섹션 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    // 섹션의 셀수 (pets이 담고있는 아이템 수만큼 )
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pets.count
    }

    // 셀 하나씩 만들때마다 타는 함수 (스토리보드 cell의 Identifier에 reuseIdentifier 추가)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        if let petCell = cell as? HelpetTableViewCell{
            
            let pet = self.pets[indexPath.row]
        
            /*
            let numFormatter:NumberFormatter = NumberFormatter()
            numFormatter.numberStyle = NumberFormatter.Style.decimal
            
            
            if let age = pet.age {
                let ageStr = numFormatter.string(from: NSNumber(integerLiteral: age))
                petCell.petAgeLabel.text = ageStr
            } else {
                petCell.petAgeLabel.text = ""
            }
            */
            
            petCell.petNameLabel.text = pet.name
            petCell.petKindLabel.text = pet.kind
            petCell.petSexLabel.text = pet.sex
            petCell.petPlaceLabel.text = pet.place
            petCell.petImageView.image = pet.petimage
            petCell.petLostDateLabel.text = pet.lostdate
      
            return petCell
        
        }
       

        return cell
    }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}



class HelpetTableViewCell: UITableViewCell{

    
    @IBOutlet weak var petImageView: UIImageView!
    
    @IBOutlet weak var petNameLabel: UILabel!

    
    @IBOutlet weak var petSexLabel: UILabel!
    
    @IBOutlet weak var petKindLabel: UILabel!
    
    
    @IBOutlet weak var petPlaceLabel: UILabel!
    
    @IBOutlet weak var petLostDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    
    }
    
    
}
