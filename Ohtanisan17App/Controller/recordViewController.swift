//
//  recordViewController.swift
//  Ohtanisan17App
//
//  Created by 野村俊介 on 2021/10/08.
//

import UIKit

class recordViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var toTopButton: UIButton!
    @IBOutlet weak var selectYear: UIPickerView!
    @IBOutlet weak var record: UILabel!
    
    let dataList  = [
        ["打者成績","投手成績"]
        , ["2013","2014","2015","2016","2017","2018","2019","2020","2021"]
    ]
    
    var recordBrain = RecordBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toTopButton.layer.cornerRadius = 10
        record.layer.cornerRadius = 50
        record.clipsToBounds = true
        
        // Delegate設定
        selectYear.delegate = self
        selectYear.dataSource = self
        
        record.text = "所属：日ハム\n試合：77\n安打：45\n二塁打：15\n三塁打：1\n本塁打：3\n打点：20\n盗塁：4\n打率：.238\nOPS:.660"
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return dataList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataList[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return dataList[component][row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //1つ目のコンポーネント（ピッカー）の行
        let row1 = pickerView.selectedRow(inComponent: 0)
        //2つ目のコンポーネント（ピッカー）の行
        let row2 = pickerView.selectedRow(inComponent: 1)
        
        let position = row1
        let year = row2
        
        _ = recordBrain.getRecord(position: position, year: year)
        
        record.text = recordBrain.disply()
        
        
    }

    @IBAction func toTopPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
