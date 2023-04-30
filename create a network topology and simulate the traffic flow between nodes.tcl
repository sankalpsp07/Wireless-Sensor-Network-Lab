set ns [new Simulator]
set nf [open practicle.nam w]
$ns namtrace-all $nf
set nt [open practicle.tr w]
$ns trace-all $nt

set proto rlm

$ns color 1 blue
$ns color 2 yellow
$ns color 3 red

set Client1 [$ns node]
set Router1 [$ns node]
set Endserver1 [$ns node]


$ns duplex-link $Client1 $Router1 2MB 100ms DropTail
$ns duplex-link $Router1 $Endserver1 200Kb 100ms DropTail

$ns duplex-link-op $Client1 $Router1 orient right
$ns duplex-link-op $Router1 $Endserver1 orient right


$ns at 0.0 "$Client1 label Client1"
$ns at 0.0 "$Router1 label Router1"
$ns at 0.0 "$Endserver1 label Endserver1"

$Endserver1 shape hexagon
$Router1 shape square

$ns duplex-link-op $Client1 $Router1 queuePos 0.1
$ns duplex-link-op $Router1 $Endserver1 queuePos 0.5


proc finish {} {
global ns nf nt
$ns flush-trace
close $nf
close $nt
puts "running nam..."
exec nam practicle.nam &
exit 0
}

$ns at 6.0 "finish"
$ns run
