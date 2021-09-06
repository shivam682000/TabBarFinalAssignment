import UIKit

class DetailViewController: UIViewController {
    
    private var myData : MyModel?
    private var myData2 : MyData1?
    @IBOutlet weak var dlabel1: UILabel!
    @IBOutlet weak var dimage1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         setup()
         setup2()
    }
    
    func setup() {
        guard let unwrappedData = myData else {
          return
    }
      self.navigationItem.title = unwrappedData.name
      dimage1.image = UIImage(named: unwrappedData.image ?? "")
//      dlabel1.text = unwrappedData.name
    }
    
    func setup2(){
        guard let unwrappedData2 = myData2 else {
          return
        }
        self.navigationItem.title = unwrappedData2.laptopName
        dimage1.image = UIImage(named: unwrappedData2.laptopImage ?? "")
//        dlabel1.text = unwrappedData2.laptopName
    }
    
    func configureData(data : MyModel?) {
        self.myData = data
    }
    
    func configureData2(data : MyData1?) {
        self.myData2 = data
    }
}
