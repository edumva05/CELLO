import Foundation

let getdate = Date()
let calendar = Calendar.current
let components = calendar.dateComponents([.year, .month, .day, .weekday], from: getdate)

var year =  components.year
var month = components.month
var day = components.day
var weekday = components.weekday

var stableYear = components.year
var stableMonth = components.month


