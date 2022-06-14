//
//  ToDoTableViewController.swift
//  ToDo
//
//  Created by Catelyn Hu on 2022/6/14.
//

import UIKit

class ToDoTableViewController: UITableViewController {
  
    var toDos : [ToDo] = []

    override func viewDidLoad() {
      super.viewDidLoad()

      toDos = createToDos()
    }

func createToDos() -> [ToDo] {

  let learn = ToDo()
  learn.name = "learn"
  learn.important = true
    
  let play = ToDo()
  play.name = "play games"

  return [learn, play]
    
}

// MARK: - Table view data source

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  return toDos .count
}

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

  let toDo = toDos [indexPath.row]

  if toDo.important {
    cell.textLabel?.text = "❗️" + toDo.name
  } else {
    cell.textLabel?.text = toDo.name
  }

  return cell
}

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
