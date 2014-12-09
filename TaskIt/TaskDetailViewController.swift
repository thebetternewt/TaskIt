//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Chris Eady on 12/8/14.
//  Copyright (c) 2014 Chris Eady. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    var detailTaskModel: TaskModel!
    var mainVC: ViewController!
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.taskTextField.text = detailTaskModel.task
        self.subtaskTextField.text = detailTaskModel.subTask
        self.dueDatePicker.date = detailTaskModel.date
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func deleteButtonTapped(sender: UIButton) {
        
        let indexPath = mainVC.tableView.indexPathForSelectedRow()
        mainVC.baseArray[0].removeAtIndex(indexPath!.row)
        mainVC.tableView.reloadData()
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    @IBAction func doneButtonTapped(sender: UIBarButtonItem) {
        
        var task = TaskModel(task: taskTextField.text, subTask: subtaskTextField.text, date: dueDatePicker.date, isCompleted: false)
        mainVC.baseArray[0][mainVC.tableView.indexPathForSelectedRow()!.row] = task
        self.navigationController?.popViewControllerAnimated(true)
    }
}
