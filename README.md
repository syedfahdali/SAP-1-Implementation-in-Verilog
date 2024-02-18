# SAP1-computer-verilog
Verilog implementation of SAP-1 computer architecture
# ABOUT SAP
The Simple-As-Possible (SAP)-1 computer is a very basic model of a microprocessor explained by Albert Paul Malvino
The architecture is 8 bits and comprises of 16 X 8 memory i.e. 16 memory location with 8 bits in each location.
SAP can only perform addition and subtraction and no logical operation. These arithmetic operations are performed by an adder/subtractor unit.
There is one general purpose register (B register) used to hold one operand of the arithmetic operation while another is kept by the accumulator register of the SAP-1.
In addition, there are 8 LEDs which work as output unit and connected with the 8 bit output register.Here i connected the output to a seven segment display.

All timely moment of data or activities are performed by the control unit
This computer is NOT TURING COMPLETE.It has only 5 instructions(LDA,ADD,SUB,OUT,HLT).

# SAP ARCHITECTURE

![image1](https://user-images.githubusercontent.com/60542883/133000300-5857296e-defc-4d18-9542-89a6bc690eba.jpeg)

for more info: Digital Computer Electronics by Albert Paul Malvino & Jerald A. Brown.                                                                                                
https://www.youtube.com/watch?v=HyznrdDSSGM&list=PLowKtXNTBypGqImE405J2565dvjafglHU
               
METHOD OF COMPILATION:
. First go to ModelSim and Create a new project by selecting the cloned repository.
. Then Click Add existing files in the project and select all the files from the menu box.
. Select all and compile them.
. Simulate them through tb_main which is inside the file tb_topmod.v 
. Simulation is done by selecting simulate tab and then start simulation.
. Then select work and inside it tb_main
. When new window open press Ctrl+ W and then again go simulate tab.
. In simulate tab go to Run and then Run all you will start seeing lines on right side in black window.
