puts "Temperature Conversion\n"
puts "Enter \n '1' for F to C\n '2' for C to F"
gets stdin ch
switch $ch {

"1" { 
	puts "Enter temperature in Fahrenheit"
	gets stdin fdegree
	set cdegree [expr ($fdegree -32.0) * 5/9]
	puts "In Celcius, the degree is $cdegee degrees"
}

"2" {
	puts "Enter temperature in Celcius"
	gets stdin cdegree
	set fdegree [expr ($cdegree *9 / 5)+ 32.0]
	puts "In Fahrenheit, the degree is $fdegee degrees"
}

default {
	puts "Invalid Input"
}

}
