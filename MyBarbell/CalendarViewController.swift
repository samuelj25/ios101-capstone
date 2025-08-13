//
//  CalendarViewController.swift
//  MyBarbell
//
//  Created by Samuel Jimenez on 8/12/25.
//

import Foundation
import UIKit


class CalendarViewController: UIViewController {
    
    private var calendarView: UICalendarView!

    @IBOutlet weak var calendarContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.calendarView = UICalendarView()
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        calendarContainerView.addSubview(calendarView)
        NSLayoutConstraint.activate([
            calendarView.leadingAnchor.constraint(equalTo: calendarContainerView.leadingAnchor),
            calendarView.topAnchor.constraint(equalTo: calendarContainerView.topAnchor),
            calendarView.trailingAnchor.constraint(equalTo: calendarContainerView.trailingAnchor),
            calendarView.bottomAnchor.constraint(equalTo: calendarContainerView.bottomAnchor)
        ])
        
//        calendarView.delegate = self
//        let dateSelection = UICalendarSelectionSingleDate(delegate: self)
//        calendarView.selectionBehavior = dateSelection
    }


}
