   import Foundation
   
   let words = ["apple", "banana", "orange", "grape", "pear"]
   
   // Predicate to filter words starting with 'a'
   let startsWithAPredicate = NSPredicate { (word, _) in
       if let word = word as? String {
           return word.hasPrefix("a")
       }
       return false
   }
   
   // Filtering using the predicate
   let aWords = words.filter { startsWithAPredicate.evaluate(with: $0) }
   
   print("Words starting with 'a': \(aWords)") // Output: ["apple"]
   