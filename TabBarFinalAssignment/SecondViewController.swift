import UIKit
struct MyResponse1 {
    var data : [MyData1]?
}

struct MyData1 {
    var laptopName : String?
    var laptopImage : String?
}

class SecondViewController : UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var mydata = MyResponse1()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mydata = MyResponse1(data: [MyData1(laptopName: "HP", laptopImage: "hp"),MyData1(laptopName: "Lenovo", laptopImage: "lenovo"),MyData1(laptopName: "Dell", laptopImage: "dell"),MyData1(laptopName: "MI", laptopImage: "mi"),MyData1(laptopName: "Apple", laptopImage: "apple"),MyData1(laptopName: "Acer", laptopImage: "acer"),MyData1(laptopName: "HP", laptopImage: "hp"),MyData1(laptopName: "Lenovo", laptopImage: "lenovo"),MyData1(laptopName: "Dell", laptopImage: "dell"),MyData1(laptopName: "MI", laptopImage: "mi"),MyData1(laptopName: "Apple", laptopImage: "apple"),MyData1(laptopName: "Acer", laptopImage: "acer"),MyData1(laptopName: "HP", laptopImage: "hp"),MyData1(laptopName: "Lenovo", laptopImage: "lenovo"),MyData1(laptopName: "Dell", laptopImage: "dell"),MyData1(laptopName: "MI", laptopImage: "mi"),MyData1(laptopName: "Apple", laptopImage: "apple"),MyData1(laptopName: "Acer", laptopImage: "acer")])
    }
}

extension SecondViewController :UICollectionViewDelegate, UICollectionViewDataSource,    UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return mydata.data?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell
        cell.configureItem(data: mydata.data?[indexPath.row])
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 10
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detail2 : DetailViewController = self.storyboard?.instantiateViewController(identifier:  "DetailViewController") as! DetailViewController
        detail2.configureData2(data : mydata.data?[indexPath.row])
        self.navigationController?.pushViewController(detail2, animated:true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-10)/2
        print(size)
        return CGSize(width: size, height: size)
    }
}

