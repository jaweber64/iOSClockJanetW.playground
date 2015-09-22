//: Playground - noun: a place where people can play

// Janet Weber  Due 9/21/2015
// Lab: Flow Exercise - Clock (Week 5)
// Use flow control to create a playground of a working clock
//     that keeps track of hours, minutes, and seconds.

import UIKit

var currentSec : Int            // variables holding the current second,
var currentMin : Int            //   current minute, and current hour
var currentHour : Int

var hour : String               // variables holding the output string
var minute : String             //    for hour, minute and second
var second : String             //    (used to make sure zero prepended if nec)

let START_HOUR : Int = 12       // Set clock to begin at this hour
let START_MIN : Int = 25        // Set clock to begin at this minute
let START_SEC : Int = 03        // Set clock to begin at this second

let TOTAL_MIN : Int = 150        // Run clock for this many minutes

currentHour = START_HOUR        // Initialize currenHour
currentMin = START_MIN          //    currentMin, and CurrentSec
currentSec = START_SEC          //    to start time - we go from here

// ***********************************************************************
// Display current clock time taking care to prepend a zero if hour, minute
//    or second is less than 10 so that the digital display looks normal.
// ***********************************************************************
if (START_HOUR < 10) {          // if the hour, minute or second is less
    hour = "0\(START_HOUR)"     //     than 10, then prepend a zero so
} else {                        //     the output string looks nice
    hour = "\(START_HOUR)"
}

if (START_MIN < 10){            // see above comment
    minute = "0\(START_MIN)"
} else {
    minute = "\(START_MIN)"
}

if (START_SEC < 10){            // see above comment
    second = "0\(START_SEC)"
} else {
    second = "\(START_SEC)"
}

// print our the starting clock time and how long it will run
println("Current clock time is: \(hour):\(minute).\(second)")
println("The clock will run for approximately \(TOTAL_MIN) minutes.")
println ("   It will finish current minute and then do \(TOTAL_MIN-1) more")

// ********************************************************************
// CLOCK PORTION: increase seconds by 1 until 60 then reset to zero and 
//    increase minutes by one until 60 then reset to zero and increase
//    hours by one until 12 then reset to 1 (sort of).
// ********************************************************************
// Use this outer "for-in" loop to make sure the clock doesn't just run forever
for _ in 1...TOTAL_MIN {            // finishes first minute, then TOTAL_MIN-1 more min
    
    while (currentSec < 59){        // process thru current minutes
        currentSec++                //   until end is reached         Total Seconds    =>
        // set a delay of 1 sec??? Not sure how.
    }
    currentSec = 0                  // then reset seconds to zero     Total Min turned =>

    
    if (currentMin < 59){           // increment minute  until
        currentMin++                //   end of hour is reached
    } else {                                                        //    Total Hours
        currentMin = 0              // then reset minute to zero               turned  =>
        if (currentHour < 12){
            currentHour++           // increment hour until 12
        } else {                    //   then reset hour to 1
            currentHour = 1
        } // end of if-currentHour
        
    } // end of if-currentMin
    
} // end of for-in loop

// ********************************************************************
// Display final clock time taking care to prepend a zero if hour, minute 
//    or second is less than 10 to that the digital display looks normal
// ********************************************************************
// Print out the time after TOTAL_MIN have passed from when clock started
if (currentHour<10){
    hour = "0\(currentHour)"
} else {
    hour = "\(currentHour)"
}
if (currentMin < 10) {
    minute = "0\(currentMin)"
} else {
    minute = "\(currentMin)"
}
if (currentSec < 10) {
    second = "0\(currentSec)"
} else {
    second = "\(currentSec)"
}

println("Current time: \(hour):\(minute).\(second)")

// DONE !!
