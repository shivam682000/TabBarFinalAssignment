import UIKit

struct MyResponse {
    var data : [MyModel]?
}

struct MyModel {
    var name : String?
    var image : String?
}

class FirstViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myData = MyResponse()
    
    override func viewDidLoad() {
         super.viewDidLoad()
         myData = MyResponse(data: [MyModel(name: "Burger", image: "burger"),MyModel(name: "Pizza", image: "noodles"),MyModel(name: "Pasta", image: "pasta"),MyModel(name: "Noodle", image: "noodles"),])
     }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
             return 200
         }
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return myData.data?.count ?? 0
     }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.configureCell(data: myData.data?[indexPath.row])
        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
         return 3
     }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailViewController = self.storyboard?.instantiateViewController(identifier:  "DetailViewController") as! DetailViewController
        detail.configureData(data: myData.data?[indexPath.row])
        self.navigationController?.pushViewController(detail, animated:true)
    }
}







