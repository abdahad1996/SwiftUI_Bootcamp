//
//  ContentView.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 04/02/2024.
//

import SwiftUI

struct Person {
    var name: String
    var age: Int
}

//uncomment each method and see how it affects the result
@resultBuilder
struct StringBuilder {
    static func buildBlock(_ components: String...) -> String {
        return components.joined(separator: "\n")
    }
    
//    static func buildOptional(_ component: String?) -> String {
//        component ?? ""
//    }
//    static func buildEither(first component: String) -> String {
//        return component
//    }
    
//    static func buildEither(second component: String) -> String {
//        return component
//    }
    
//    static func buildArray(_ components: [String]) -> String {
//        return components.joined(separator: "\n")
//    }
//    static func buildExpression(_ expression: String) -> String {
//        return expression + " ADDED EXPRESSION"
//    }
//    static func buildFinalResult(_ result: String) -> String {
//           // Perform final adjustments on the result before returning
//        return result.uppercased()
//       }
}

//print
func description(@StringBuilder content: () -> String) {
    return print(content())
}

struct ResultBuilderExample: View {
    let person = Person(name: "John", age: 30)
    
    init() {
        
        //MARK: normal string interpolation
        //        let description =
        //        "Name: \(person.name), Age: \(person.age)\n"
        //        +
        //        "Name: \(person.name), Age: \(person.age)\n"
        //        +
        //        "Name: \(person.name), Age: \(person.age)\n"
        //        +
        //        "Name: \(person.name), Age: \(person.age)\n"
        
        //        print(description)
        
        
        
        
        //MARK: Result builder interpolation
        //        description {
        //            "Name: \(person.name), Age: \(person.age)"
        //            "Name: \(person.name), Age: \(person.age)"
        //            "Name: \(person.name), Age: \(person.age)"
        //            "Name: \(person.name), Age: \(person.age)"
        //
        //        }
        
        //MARK: Result builder optional
        //        let nilString:String? = nil
        //        description {
        //            "abdul"
        //            if let nilString {
        //                nilString
        //            }
        //
        //            "ahad"
        //        }
        
        //MARK: Result builder if/else
        //        let lovesFootball = true
        //        description {
        //            "abdul"
        //            if lovesFootball {
        //                "loves football"
        //            }else{
        //                "hates football"
        //            }
        //        }
        
        //MARK: Result builder array
//        let names = ["owais", "hashmi", "trump"]
//        description {
//            "abdul"
//            for name in names {
//                name
//            }
//            "sara"
//            
//        }
        
        
        //MARK: Result builder individual Expression
        description {
            "abdul"
            "bilal"
        }
        
        //MARK: Result builder Final Expression
//        description {
//            "abdul"
//            "sara"
//        }
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ResultBuilderExample()
}




