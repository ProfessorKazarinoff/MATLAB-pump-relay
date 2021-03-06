# MATLAB-Arduino Pump Relay
A student project for ENGR114 at Portland Community College. Uses MATLAB and an Arduino connected over serial to switch on and off a pump using a relay.

## Problem Statement
We will create a user input controlled pump. This will be controlled via the command line in MATLAB, which will be accessed through a laptop near the garden. The program will ask the user if they want to turn the pump on or off. It will ignore inputs that do not correspond to either of these actions. If the pump is already on, and they select to turn it on, it will inform the user that it is on, and vice versa if the pump is off.

## Hardware Setup
### Bill of Materials
For this project, we used one Redboard, one USB Mini-B cable, three jumper wires, one relay kit, one three wire extension cord, two wire caps, electrical tape, and one electrical junction box.  The specific Redboard (part no. DAV – 13975) we used was supplied by SparkFun, along with most the other materials such as, the USB cable (part no. CAB – 11301), jumper wires (part no. PRT - 11026), and relay control kit (part no. KIT - 13815).  The extension cord used was rated for 15 amps at 125 volts and was enclosed in an oil resistant sleeve that measured approximately eight feet in length.  We cut the extension cord towards the middle and used the wire caps to connect the green and white wires (accessory and power).  The negative wire was ran through the relay.  The electrical junction box measured approximately 2.5in tall, 7.5in long, and 4.5in wide.
### Connection Guide
![Alt text](/doc/fritzing_pump_relay.png "Title")
![Alt text](/doc/top_view.jpg?raw=true "Optional Title")

The red jumper wire is the wire that is providing 5 volts to the relay (low voltage side).  When the relay is “off” it is switched in the position that connects the circuit to the red wire.  This black jumper wire completes the circuit by grounding the connection.  When the relay is switched on, the power is sent out the relay via the green jumper wire, which comes from pin 13 on the Arduino.  The relay is also in the circuit of the extension cord.  When the relay is open, the two parts of the electrical cord are not connected, so the power is not supplied to the water pump.  When the relay is turned on, the block (hot) wires are connected which completes the electrical circuit in the electrical cord.  This supplies power to the pump, turning it on.  The Arduino board is just supplying a low voltage "signal" to the relay, which is what turns the extension cord “on” and “off”.

The Redboard and relay kit were mounted securely in the electrical junction box to ensure the fragile jumper cables would stay where they are supposed to.  Also, we secured the wires at the openings in the box with enough slack to prevent the connections from coming loose. From the extension cords, the two white (neutral) wires were wired together with wire nuts. The two green (ground) wires were secured together with wire nuts. The two black (hot) wires were screwed into the relay (high voltage side).
## Arduino Code

The [arduino-code.ino](arduino-code.ino) sketch was uploaded on the Arduino using the Arduino IDE.

## MATLAB Code

The [MATLAB_code.m](MATLAB_code.m) script was run in MATLAB.

## Results
The water pump will turn on when the user inputs 1.  The water pump will turn on for a specific duration when the user inputs 2.  The water pump will shut off when the user inputs 3.
![Alt text](/doc/results.png?raw=true "Optional Title")

## Future Work
There are a few features that future groups could incorporate to make the water pump relay even more spectacular.  First, groups could consider adding a water volume gauge.  The group would need to find the pump’s rate of flow (in seconds or minutes) to determine the amount of water that has flowed through the pump.  This would need an internal timer to calculate the volume of water over a specific time interval.  This would be helpful to monitor the amount of water that is running through the pump.  It is possible for the water pump group to complete this, but the user may want to know that information at the same time he or she turns the pump off.  Second, future groups could coordinate with the water level gauge to produce separate code that works together.  Using the exact same MATLAB variable names and Arduino variable names, these two programs could detect when the water level is too low, and automatically turn on the pump.  Finally, future students could make the code inputs words instead of numbers.  For example, instead of turning the pump on for a certain duration by pressing 2, the user could input a string “pump time.”  Then they would be prompted to input the specific time.  Multiple names could be given so if they input “pump on timer” it will still work.  Either create multiple names or prompt the user of the valid inputs.
