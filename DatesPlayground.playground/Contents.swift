import Foundation

// Start with a date, like so:

let date = Date()

// Create a date using today's date and a DateComponents structure
let components = DateComponents(calendar: .current, year: 2019, month: 10, day: 29)
let currentDate = components.date

// Compare the two dates to see if they occur in the same Calendar day
if Calendar.current.isDate(date, inSameDayAs: currentDate!) {
    print("VERY MUCH YES")
}
// Use a date formatter

let formatter = DateFormatter()

// use the formatter to print the day in a friendly format.
formatter.dateFormat = "EEEE, MMM d, yyyy"

print(formatter.string(from: currentDate!))
// hint, use NSDateFormatter.com to get an appropriate printing format string.
