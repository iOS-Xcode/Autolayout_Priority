//
//  ViewController.swift
//  Dynamic_TableView
//
//  Created by Seokhyun Kim on 2022-05-31.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let contentArray = ["Lorem Ipsum is simply dummy text of the printing and typesetting industry.", "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", "when an unknown printer took a galley of type and scrambled it to make a type specimen book.", "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages", "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //쎌리소스 파일 가져오기
        //let myTableViewCellNib = UINib(nibName: "MyTableViewCell", bundle: nil)
        let myTableViewCellNib = UINib(nibName: String(describing: MyTableViewCell.self), bundle: nil)
        
        //셀에 리소스 등록
        self.tableView.register(myTableViewCellNib, forCellReuseIdentifier: "myTableViewCell")
        
        //셀의 높이 자동계산
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 120
        
        //아주중요
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        print(contentArray.count)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    //테이블 뷰의 셀의 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as! MyTableViewCell
        cell.userContentLabel.text = contentArray[indexPath.row]
        return cell
    }
    
    
}
