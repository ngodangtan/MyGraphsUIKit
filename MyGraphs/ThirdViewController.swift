//
//  ThirdViewController.swift
//  MyGraphs
//
//  Created by Ngo Dang tan on 13/07/2021.
//

import UIKit
import Charts

class ThirdViewController: UIViewController, ChartViewDelegate {

    private var pieChart = PieChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pieChart.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pieChart.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width)
        pieChart.center = view.center
        view.addSubview(pieChart)
        
        var entries = [ChartDataEntry]()
        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.colorful()
        let data = PieChartData(dataSet: set)
        pieChart.data = data
    }
}
