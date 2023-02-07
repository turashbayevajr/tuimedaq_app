//
//  NewsViewModel.swift
//  Auth
//
//  Created by Ажар Турашбаева on 07.02.2023.
//

import Foundation
import FirebaseFirestore
 
class newsViewModel: ObservableObject {
     
    @Published var news = [News]()
     
    private var db = Firestore.firestore()
     
    func fetchData() {
        db.collection("news").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
             
            self.news = documents.map { (queryDocumentSnapshot) -> News in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                let description = data["description"] as? String ?? ""
                
                return News(name: name, description: description)
            }
        }
    }
}
