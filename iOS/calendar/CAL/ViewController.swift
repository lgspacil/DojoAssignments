//
//  ViewController.swift
//  CAL
//
//  Created by Lucas Spacil on 7/13/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit
import JTAppleCalendar

class ViewController: UIViewController {
    
    let formatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let firstDate = formatter.date(from: "2017 01 01")
        let lastDate = formatter.date(from: "2017 01 09")
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: JTAppleCalendarViewDelegate, JTAppleCalendarViewDataSource {
    
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
        
        
        formatter.dateFormat = "yyyy MM dd"
        formatter.timeZone = Calendar.current.timeZone
        formatter.locale = Calendar.current.locale
        
        let startdate = formatter.date(from: "2017 01 01")!
        let enddate = formatter.date(from: "2017 12 31")!
        
        let parameters = ConfigurationParameters(startDate: startdate, endDate: enddate)
        return parameters
    }
    
    
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "CustomCell", for: indexPath) as!  CustomCell
        cell.dateLabel.text = cellState.text
        
        
        if cellState.isSelected{
            cell.selectedCell.isHidden = false
        }
        else{
            cell.selectedCell.isHidden = true
        }
        return cell
    }
    
    //what happens when you select a given cell...
    func calendar(_ calendar: JTAppleCalendarView, didSelectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
        
        guard let validCell = cell as? CustomCell else {return}
        
        validCell.selectedCell.isHidden = false
    }
    
    
    
//     calendarView.selectDates(from: firstDate, to: lastDate, triggerSelectionDelegate: false, keepSelectionIfMultiSelectionAllowed: true)
    
    
//    for leave in allLeavesReq {
//    calendarView.selectDates(from: leave.fromDate!, to: leave.toDate!, triggerSelectionDelegate: false)
//    }
}
