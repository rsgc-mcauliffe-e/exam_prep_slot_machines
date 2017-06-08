import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var quarters = UInt()
var machineOnePlaysSinceWin = -1
var machineTwoPlaysSinceWin = -1
var machineThreePlaysSinceWin = -1
var totalPlayCount = UInt()

// Loop until valid input is received
while quarters == 0 {
    
    // Show the prompt
    print("How many quarters does Martha have in the jar?")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
		
		if let isANumber = UInt(notNilInput){
			if isANumber > 0 && isANumber < 1000 {
				quarters = isANumber
			}
		}
        
    }
    
}
while machineOnePlaysSinceWin == -1 {
	
	// Show the prompt
	print("How many times has the first machine been played since paying out?")
	
	// Get the user's input
	var input : String?
	input = readLine()
	
	// Use optional binding to see if the string can be unwrapped (to see if it is not nil)
	if let notNilInput = input {
		
		if let isANumber = Int(notNilInput){
			if isANumber >= 0 && isANumber <= 34  {
				machineOnePlaysSinceWin = isANumber
			}
		}
		
	}
	
}
while machineTwoPlaysSinceWin == -1 {
	
	// Show the prompt
	print("How many times has the second machine been played since paying out?")
	
	// Get the user's input
	var input : String?
	input = readLine()
	
	// Use optional binding to see if the string can be unwrapped (to see if it is not nil)
	if let notNilInput = input {
		
		if let isANumber = Int(notNilInput){
			if isANumber >= 0 && isANumber <= 99  {
				machineTwoPlaysSinceWin = isANumber
			}
		}
		
	}
	
}
while machineThreePlaysSinceWin == -1 {
	
	// Show the prompt
	print("How many times has the third machine been played since paying out?")
	
	// Get the user's input
	var input : String?
	input = readLine()
	
	// Use optional binding to see if the string can be unwrapped (to see if it is not nil)
	if let notNilInput = input {
		
		if let isANumber = Int(notNilInput){
			if isANumber >= 0 && isANumber <= 9  {
				machineThreePlaysSinceWin = isANumber
			}
		}
		
	}
	
}
/*

 PROCESS

 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
// Add 'process' code below....

func newPlay() {
	quarters -= 1
	totalPlayCount += 1
}

while (quarters > 0){
	
	//check before play one
	if (quarters == 0) {
		break
	}
	
	//play one
	machineOnePlaysSinceWin += 1
	newPlay()
	if (machineOnePlaysSinceWin == 35) {
		quarters += 30
		machineOnePlaysSinceWin = 0
	}
	
	//check before play two
	if (quarters == 0) {
		break
	}
	
	//play two
	machineTwoPlaysSinceWin += 1
	newPlay()
	if (machineTwoPlaysSinceWin == 100){
		quarters += 60
		machineTwoPlaysSinceWin = 0
	}
	
	//check before play three
	if (quarters == 0) {
		break
	}
	
	//play three
	machineThreePlaysSinceWin += 1
	newPlay()
	if (machineThreePlaysSinceWin == 10){
		quarters += 9
		machineThreePlaysSinceWin = 0
	}
	
}



/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
print("Martha plays \(totalPlayCount) times before going broke.")
