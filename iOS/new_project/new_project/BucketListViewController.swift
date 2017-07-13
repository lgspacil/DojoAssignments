import UIKit

class BucketListViewController: UITableViewController, AddItemTableViewControllerDelegate {
    
    var items = ["make dinner", "make the code goals for the day", "travel the world"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListItemCell", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "EditItemSegue", sender: indexPath)
        print(items[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AddItemSegue"{
            let navController = segue.destination as! UINavigationController
            let addItemTableController = navController.topViewController as! AddItemTableViewController
            
            addItemTableController.delegaate = self

        } else if segue.identifier == "EditItemSegue"{
            
            //make a connection to the AddItemTableViewController
            let navController = segue.destination as! UINavigationController
            let addItemTableController = navController.topViewController as! AddItemTableViewController
            
            //declaring bucketlistview as delegate to the AddItemTableViewController
            addItemTableController.delegaate = self
            
            //setting up things to pass to the AddItemTableViewController
            let indexPath = sender as! NSIndexPath
            let item = items[indexPath.row]
            
            //this is sending the item in the items list to the AddItemTableViewController page
            addItemTableController.item = item
            addItemTableController.indexPath = indexPath
        }
    }
    
    func cancelButtonPressed(by controller: AddItemTableViewController) {
        print("I am the hidden controller, But I am responding to the cancel button press on the top view controller")
        dismiss(animated: true, completion: nil)
    }
    
    //once the saved button is pressed on the AddItemTableViewController page it goes here
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?){
        
        if let ip = indexPath{
            items[ip.row] = text
        }else{
            items.append(text)
        }
        
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    
    
}
