set num1 10
set num2 20
set num3 30

if {$num1 > $num2 && $num1 > $num3} {
    puts "$num1 is the greatest number."
} elseif {$num2 > $num1 && $num2 > $num3} {
    puts "$num2 is the greatest number."
} else {
    puts "$num3 is the greatest number."
}
