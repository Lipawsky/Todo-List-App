//
//  ViewController.swift
//  todonew

//Filename: todo
//Authors' name: Pengfei Du, Yingda Zhang, Abdul Ahad Khan
//StudentID: 301276081, 301275707, 301313321
//Date: 13 Nov 2022
//Date last modified : 13 Nov 2022
//App description:  a easy Todo List APP

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let taskList=data[indexPath.row]
        let cell=table.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! CustomTableViewCell
        cell.label.text=taskList.title
        cell.subLabel.text=taskList.subTitle
        //cell._switch.setOn(true, animated: false)
        
        cell.editButton.addTarget(self,action: #selector(btnClick), for: .touchUpInside)
        return cell
    }
    @objc func btnClick(sender:UIButton)
    {
        let next:secondViewController=self.storyboard?.instantiateViewController(withIdentifier: "second") as! secondViewController
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBOutlet weak var table:UITableView!
    //tableview show
    struct taskList{
        let title:String
        let subTitle:String
        //let _switch:UISwitch
        //let editButton:UIButton
    }
    let data:[taskList]=[
    taskList(title: "Task Name 1", subTitle: "completed"),
    taskList(title: "Task Name 2", subTitle: "ovedued"),
    taskList(title: "Task Name 3", subTitle: "completed"),
    taskList(title: "Task Name 4", subTitle: "completed"),
    taskList(title: "Task Name 5", subTitle: "Friday"),
    
             ]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
 /*
//DataSource
    var dwarves:[completeSitution]=[]
    let simpleTableIdentifier = "SimpleTableIdentifier"
    func buildDwarves()->Void
    {
        dwarves.append(completeSitution(title: "Task Name 1", vidio: "disney",imageButton:btnClick(String:title)))
        dwarves.append(completeSitution(title: "Task Name 2", vidio: "disney",imageButton: btnClick))
        dwarves.append(completeSitution(title: "Task Name 3", vidio: "disney",imageButton: btnClick))
        dwarves.append(completeSitution(title: "Task Name 4", vidio: "disney",imageButton: btnClick()))
        dwarves.append(completeSitution(title: "Task Name 5", vidio: "disney",imageButton: btnClick()))
    }
    //output datasource by row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
                if (cell == nil) {
                    cell = UITableViewCell(
                        style: UITableViewCell.CellStyle.subtitle,
                        reuseIdentifier: simpleTableIdentifier)
                }
                
        cell?.textLabel?.text = dwarves[indexPath.row].title
        cell?.detailTextLabel?.text=dwarves[indexPath.row].vidio
        //switch
        let switchView=UISwitch(frame: CGRectZero)
        switchView.setOn(true, animated: true)
        switchView.tag=indexPath.row
        switchView.addTarget(self, action: #selector(self.didChangeValue(forKey:)), for:.valueChanged)
        cell?.accessoryView=switchView
   //Button
        func btnClick(sender:completeSitution.Type)
        {
            let imageButton=UIButton(frame: CGRect(x: 5, y: 5, width: 50, height: 50))
            
            imageButton.tag=indexPath.row
            imageButton.addTarget(self, action: #selector(completeSitution.init(title:vidio:imageButton:)), for:.touchUpInside)
        }
      
        
        
        return cell!
    }
   
 
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
            return indexPath.row == 0 ? nil : indexPath
        } */

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource=self
        table.delegate=self
    }
   
}

