//
//  TabBarFinalAssignmentTests.swift
//  TabBarFinalAssignmentTests
//
//  Created by shivam kumar on 20/09/21.
//

import XCTest
@testable import TabBarFinalAssignment
class TabBarFinalAssignmentTests: XCTestCase {
    
   
    
    func test_numberofsection() {
        let vc = get()
        XCTAssertEqual(vc.numberOfSections(in: vc.tableView), 3)
    }
    func testTableViewCellHasReuseIdentifier() {
        let vc = get()
            let cell = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as? TableViewCell
            let actualReuseIdentifer = cell?.reuseIdentifier
            let expectedReuseIdentifier = "cell"
            XCTAssertEqual(actualReuseIdentifer, expectedReuseIdentifier)
        }
    
    func test_data_empty() {
        
        let vc = get()
        XCTAssertNotNil(vc.myData.data?.count)
    }

    func test_load_VC_from_storyBoard() {
            let vc = get()
            XCTAssertNotNil(vc.view)
        }

    func test_iboutlet_are_connected() {
            let vc = get()
        XCTAssertNotNil(vc.tableView)
        }
    
    func test_tableView_has_delegate_and_dataSourse() {
            let vc = get()
            XCTAssertNotNil(vc.tableView.dataSource)
            XCTAssertNotNil(vc.tableView.delegate)
        }
    
    func test_tableView_conforms__tableViewDataSourceProtocol() {
            let vc = get()
            XCTAssertTrue(vc.conforms(to: UITableViewDataSource.self))
            XCTAssertTrue(vc.responds(to: #selector(vc.tableView(_:numberOfRowsInSection:))))
            XCTAssertTrue(vc.responds(to: #selector(vc.tableView(_:cellForRowAt:))))
            
        }
    
    func test_tableViewCell_iboutlet_are_connected() {
           let vc = get()
           let cell = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as! TableViewCell
           XCTAssertNotNil(cell.label1)
           XCTAssertNotNil(cell.image1)
    }
    
    func test_number_of_rows_in_tableView() {
            let vc = get()
            XCTAssertEqual(vc.tableView.numberOfRows(inSection: 0), 4)
        XCTAssertEqual(vc.tableView.numberOfRows(inSection: 1), 4)
        XCTAssertEqual(vc.tableView.numberOfRows(inSection: 2), 4)
        
        }
    
    
    func test_heading_on_first_row(){
           let vc = get()
           let cell = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 1, section: 0)) as! TableViewCell
        XCTAssertEqual(cell.label1.text, "Pizza")
       }
    func test_tableView_conforms_tableViewDelegate(){
        let vc = get()
        XCTAssertTrue(vc.conforms(to: UITableViewDelegate.self))
        
    }
    
    func test_tableView_has_didSelectRowAt(){
        let vc = get()
        
        XCTAssertNotNil(vc.tableView(vc.tableView, didSelectRowAt: IndexPath(row: 0, section: 0)))

    }
    
    func test_pushViewController() {
        let vc = get()
        let navigation = UINavigationController()
        navigation.viewControllers = [vc]
        
        XCTAssertEqual(navigation.viewControllers.count, 1)
    }

    
    // Collection View
    
    
    func test1_iboutlet_are_connected() {
            let vc = get_collectionView_object()
        XCTAssertNotNil(vc.collectionView)
        }
    func test1_data_empty() {
        
        let vc = get_collectionView_object()
        XCTAssertTrue(vc.mydata.data?.count != 0)
    }
    
    func test1_tableView_has_delegate_and_dataSourse() {
            let vc = get_collectionView_object()
        XCTAssertNotNil(vc.collectionView.dataSource)
        XCTAssertNotNil(vc.collectionView.delegate)
        }
    func testCollectionCellHasReuseIdentifier() {
        let vc = get_collectionView_object()
        let cell = vc.collectionView(vc.collectionView, cellForItemAt: IndexPath(row: 0, section: 0)) as! CollectionViewCell
        let actualReuseIdentifer = cell.reuseIdentifier
            let expectedReuseIdentifier = "cell1"
            XCTAssertEqual(actualReuseIdentifer, expectedReuseIdentifier)
        }
    
    func test1_tableView_conforms__tableViewDataSourceProtocol() {
            let vc = get_collectionView_object()
        XCTAssertTrue(vc.conforms(to: UICollectionViewDataSource.self))
        XCTAssertTrue(vc.responds(to: #selector(vc.collectionView(_:numberOfItemsInSection:))))
        XCTAssertTrue(vc.responds(to: #selector(vc.collectionView(_:cellForItemAt:))))
            
        }
    func test1_tableView_conforms__tableViewDelegate() {
        let vc = get_collectionView_object()
        XCTAssertTrue(vc.conforms(to: UICollectionViewDelegate.self))
        
    }
    func test1_tableViewCell_iboutlet_are_connected() {
           let vc = get_collectionView_object()
        let cell = vc.collectionView(vc.collectionView, cellForItemAt: IndexPath(row: 0, section: 0)) as! CollectionViewCell
        XCTAssertNotNil(cell.label2)
        XCTAssertNotNil(cell.image2)
        XCTAssertNotNil(cell.configureItem(data:))
        
    }
    func test1_outletValue() {
        let vc = get_collectionView_object()
        let cell = vc.collectionView(vc.collectionView, cellForItemAt: IndexPath(row: 0, section: 0)) as! CollectionViewCell
        XCTAssertEqual(cell.label2.text, "HP")
        XCTAssertEqual(cell.image2.image, UIImage(named: "hp"))
        
    }
    
    func test1_tableView_has_didSelectRowAt(){
        let vc = get_collectionView_object()
        
        XCTAssertNotNil(vc.collectionView(vc.collectionView, didSelectItemAt:IndexPath(row: 0, section: 0)))
    }
    func test_number_of_rows_in_collectionView() {
            let vc = get_collectionView_object()
        XCTAssertEqual(vc.collectionView.numberOfItems(inSection: 0),18)
        }

    
    
    
    
    // Detail View Controller
    
    func test2_load_VC_from_storyBoard() {
            let vc = get_detailView_object()
            XCTAssertNotNil(vc.view)
        }
    func test2_outlets() {
            let vc = get_detailView_object()
//        XCTAssertNotNil(vc.dlabel1)
        XCTAssertNotNil(vc.dimage1)
        }
    func test2_configureItem1() {
       
        let vc1 = get()
        vc1.tableView(vc1.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        
        let vc = get_detailView_object()
        XCTAssertEqual(vc.navigationItem.title, "Burger")
        
    }
    
    

    
    func test2_configureItem2() {
        let vc = get_detailView_object()
     XCTAssertNotNil(vc.configureData2(data: MyData1()))
        
    }
     
    
    
    func test2_navigationItemName() {
        let vc = get_detailView_object()
        let vc1 = get()
        
        vc1.tableView(vc1.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        XCTAssertNotNil(vc.setup())
    }
    
    // App Delegate
    
    
    


}

extension TabBarFinalAssignmentTests {
    func get() -> FirstViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(identifier: "FirstViewController") as! FirstViewController
        
        

        
        _ = vc.view
        
        return vc
    }
    
    func get_collectionView_object() -> SecondViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = storyboard.instantiateViewController(identifier: "SecondViewController")
        _ = vc1.view
        return vc1 as! SecondViewController

    }
    func get_detailView_object() -> DetailViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "DetailViewController")
        _ = vc.view
        return vc as! DetailViewController

    }
    
    
}
