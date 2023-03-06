puts "Temperature Conversion\n"
puts "Enter \n '1' for F to C\n '2' for C to F"
gets stdin ch
switch $ch {

"1" { 
	puts "Enter temperature in Fahrenheit"
	gets stdin fdeg
	set cdeg [expr ($fdeg -32.0) * 5/9]
	puts "In Celcius, the degree is $cdeg degrees"
}

"2" {
	puts "Enter temperature in Celcius"
	gets stdin cdeg
	set fdeg [expr ($cdeg *9 / 5)+ 32.0]
	puts "In Fahrenheit, the degree is $fdeg degrees"
}

default {
	puts "Invalid Input"
}

}
