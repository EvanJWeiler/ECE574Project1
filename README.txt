1. Members
Brendan Cassidy (brendancassidy)
Diego Akantera (dalcantra7)
Evan Weiler (evanweiler)
Logan Knott (lknott)

2. Xilinx Vivado 2016.4

3. Part: xc7a100tcsg324-1
   Speed Grade:-1 [default]

3. For out critical path of modules we ran the synthesis of the
module then ran the "Report timing summary" which allowed us to 
view the "unconstrained paths" and then "setup".  We then took the
longest of the paths possible in order to get the "critical path".
For the manual calculation of the circuit we added the critical path
of each module with the correct bit widths to get the estimation.  
For the circuit the process was the same as the modules.
In addition we found the when running our synthesis on the circuit
Vivado will optimize the program and even limit how our SHR are implemented.
We noticed that it created a snythesized module that only had the time
delay of the total of all three.
