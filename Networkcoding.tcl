set val(chan) Channel/WirelessChannel ;# channel type
set val(prop) Propagation/TwoRayGround ;# radio-propagation model
set val(netif) Phy/WirelessPhy ;# network interface type
set val(mac) Mac/802_11 ;# MAC type
set val(ifq) Queue/DropTail/PriQueue ;# interface queue type
set val(ll) LL ;# link layer type
set val(ant) Antenna/OmniAntenna ;# antenna model
set val(ifqlen) 50 ;# max packet in ifq
set val(nn) 20 ;# number of mobilenodes
set val(rp) DSDV ;# routing protocol
set val(cp)            cbr
set val(sc)            scen
set val(x) 1700 ;# X dimension of topography
set val(y) 800 ;# Y dimension of topography 
set val(stop) 150 ;# time of simulation end
### Setting The Simulator Objects
                  
      set ns_ [new Simulator]
#create the nam and trace file:
      set tracefd [open NetworkCoding.tr w]
      $ns_ trace-all $tracefd

      set namtrace [open NetworkCoding.nam w]
      $ns_ namtrace-all-wireless $namtrace  $val(x) $val(y)

      set topo [new Topography]
      $topo load_flatgrid $val(x) $val(y)
      create-god $val(nn)
      set chan_1_ [new $val(chan)]
      
####  Setting The Distance Variables
                       

      # For model 'TwoRayGround'
      set dist(5m)  7.69113e-06
      set dist(9m)  2.37381e-06
      set dist(10m) 1.92278e-06
      set dist(11m) 1.58908e-06
      set dist(12m) 1.33527e-06
      set dist(13m) 1.13774e-06
      set dist(14m) 9.81011e-07
      set dist(15m) 8.54570e-07
      set dist(16m) 7.51087e-07
      set dist(20m) 4.80696e-07
      set dist(25m) 3.07645e-07
      set dist(30m) 2.13643e-07
      set dist(35m) 1.56962e-07
      set dist(40m) 1.56962e-10
      set dist(45m) 1.56962e-11
      set dist(50m) 1.20174e-13
      Phy/WirelessPhy set CSThresh_ $dist(50m)
      Phy/WirelessPhy set RXThresh_ $dist(50m)

#  Defining Node Configuration
                        
                  $ns_ node-config -adhocRouting $val(rp) \
                   -llType $val(ll) \
                   -macType $val(mac) \
                   -ifqType $val(ifq) \
                   -ifqLen $val(ifqlen) \
                   -antType $val(ant) \
                   -propType $val(prop) \
                   -phyType $val(netif) \
                   -topoInstance $topo \
                   -agentTrace ON \
                   -routerTrace ON \
                   -macTrace ON \
                   -movementTrace ON \
                   -channel $chan_1_

###  Creating The WIRELESS NODES
                  
     for {set i 0 } { $i < $val(nn) } {incr i} {
     set n$i [$ns_ node]
     } 
      
       
 source $val(cp)  
source $val(sc)  
###  Setting The Initial Positions of Nodes

        
               
     ## Setting The Node Size
                              
      
 ##lABEL SETTING

$ns_ at 0.5 "$n6 label User_1"

$ns_ at 0.5 "$n12 label User_2"





        $ns_ at 0.0 "$n0 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n1 setdest 20.0 18.0 1.0"
	    $ns_ at 0.0 "$n2 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n3 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n4 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n5 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n6 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n7 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n8 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n9 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n10 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n11 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n12 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n13 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n14 setdest 20.0 18.0 1.0"
    	$ns_ at 0.0 "$n15 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n16 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n17 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n18 setdest 20.0 18.0 1.0"
		$ns_ at 0.0 "$n19 setdest 20.0 18.0 1.0"



 ###########
 
                        
     #ANNOTATIONS DETAILS 
       
      ### PROCEDURE TO STOP 
      proc stop {} {
            
                        global ns_ tracefd
                        $ns_ flush-trace
                        close $tracefd
                        exec nam NetworkCoding.nam &            
                        exit 0
                    }
      puts "Starting Simulation........"
      $ns_ at 15.0 "stop"
      $ns_ run

