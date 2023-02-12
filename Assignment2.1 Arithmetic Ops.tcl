#Switch case for arithmetic operations


puts "Enter your first number "
gets stdin a

puts "Enter your second number "
gets stdin b

puts "Enter: \n '1' for addition\n '2' for subtraction\n '3' for multiplication\n '4' for division"
gets stdin ch

switch $ch {
 "1" {
        set result [expr $a+$b]
        puts "Addition of $a and $b is $result"
     }
 "2" {
        set result [expr $a-$b]
        puts "Subtraction of $a and $b is $result"
     }
 "3" {
        set result [expr $a*$b]
        puts "Multiplication of $a and $b is $result"  
     }
 "4" {
        set result [expr $a/$b]
        puts "Division of $a and $b is $result"  
     }

 default {
         puts "Invalid Input"
         }
}