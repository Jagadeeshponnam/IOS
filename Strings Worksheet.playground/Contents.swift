import UIKit

var greeting = "Hello, playground"

var fact = "Swift is a type safe language"
var dev =  "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

// Work sheet 1 on Strings

fact.count
fact += " , it has a better memory management"
dev.append(" by Apple")
author.lowercased()
author.uppercased()
author[author.startIndex]
author[author.index(before: author.endIndex)]
//author[author.endIndex]  Cannot be executed because of not available data after end index
dev[dev.startIndex]
dev[dev.index(before: dev.endIndex)]
author[author.index(after: author.startIndex)]
author[author.index(author.startIndex,offsetBy: 5)]
author[author.index(author.endIndex,offsetBy: -6)]
fact[fact.index(fact.startIndex,offsetBy: 6)]

//Work sheet 2 on Strings
