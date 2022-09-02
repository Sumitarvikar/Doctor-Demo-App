//
//  HomeViewController.swift
//  DoctorDemoApp
//
//  Created by Josh on 02/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    var cliniclist : Array<CDClinicDetail>? = nil

    @IBOutlet weak var ClinicListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ClinicListTableView.dataSource = self
        ClinicListTableView.delegate = self
        ClinicListTableView.register(UINib(nibName: "HomeVCCell", bundle: nil), forCellReuseIdentifier: "HomeVCCell")

        
        HomeViewModel().getClinicListRecord { clinicrecord in
         DispatchQueue.main.async {
                if(clinicrecord != nil && clinicrecord?.count != 0){
                    self.cliniclist = clinicrecord
                    self.ClinicListTableView.reloadData()
                }
        }
        
        
//        HomeViewModel.getClinicListRecord{[weak self] animalRecords in
//            DispatchQueue.main.async {
//                if(animalRecords != nil && animalRecords?.count != 0){
//                    self?.animals = animalRecords
//                    self?.tblAnimal.reloadData()
//                }
//            }
//        }
        
        
        
//
//        ClinicListTableView.dataSource = self
//        ClinicListTableView.delegate = self
//        ClinicListTableView.register(UINib(nibName: "HomeVCCell", bundle: nil), forCellReuseIdentifier: "HomeVCCell")
  
    }

}
}

extension HomeViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cliniclist?.count ?? 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ClinicListTableView.dequeueReusableCell(withIdentifier: "HomeVCCell", for: indexPath) as! HomeVCCell
        
//        let clinic = self.cliniclist![indexPath.row]
//        
//        cell.Name.text = clinic.name
//        cell.label.text = clinic.mobile
       // let clinic =
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
    
    
    
    
    
    
    
}
