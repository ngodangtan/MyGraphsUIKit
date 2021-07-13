//
//  SecondViewController.swift
//  MyGraphs
//
//  Created by Ngo Dang tan on 13/07/2021.
//

import UIKit
import Charts

class SecondViewController: UIViewController,ChartViewDelegate {

    private var lineChart = LineChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lineChart.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        var entries = [ChartDataEntry]()
        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        let data = LineChartData(dataSet: set)
        lineChart.data = data
    }
}
