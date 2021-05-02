# Description of Sample program
# =============================
to execute dma simulator-       ./caching somefile.o somefile.dat
After execution there will be one file called 'hddcontents' that will show hard drive contents.

There is one 'mysample.asm' and 'mysample.dat' file. mysample.dat contains some data in it . Description of mysample.asm is following- how it evaluates all behaviour(read,write ,polling):
There are total 38 instructions in 'mysample.asm' .

## WRITE
'Write' operation basically from 'instruction 1- instruction 6'.  From instruction 5- 'MOVE R4,0' and  6-  ' MOVE [R4],7' we see that status register for hdd is set to 7=0111 , lsb is 1 and remaining bits are 011=3 which indicates 3 words need to be transfer. Since lsb=1 it is 'write' operation and it will write 3 words from memory to hard drive. To write in which location in hard drive specified in  instruction
1- 'MOVE R5,1' and 2 - 'MOVE [R5],8' , from memory location ' MOVE [R6],5' (instruction 4). This transfer will happen until there is no word left for transfer.  

## READ
' Read' operation is basically from 'instruction 7 - instruction 12'. 'Read' operation happened in intruction 12. Here status register set to 8=1000 , LSB=0, remaining bits=10 so only 2 words to read from hd and write to hd. The hard drive location is specified in instruction 8  'MOVE [R0],20' and memory location is specified in instruction 10 ' MOVE [R2],12' . So, between these address  read operation happens until there is no words to left.

## POLLING
'instruction 13 - intruction 17' is just normal instructions. The main 'polling' happend in 'instruction 33 - intruction 38'. 
We see that the status register is set to 15 from 'instruction 32'  -  ' MOVE [R4],R3' , Value of R3 is specified in 'instruction 20' - 'ADD R3,R7' which is R3=15. So, 15=1111, LSB=1(write), remaining bits =111(7). so need to transfer 7. since ae wre doing burst transfer( 4 words at a time) here word is 7. so need polling, means first transfer 4 and then transfer 3. To write using polling from which address to which address specified in 'instruction 28' - 'MOVE [R5],R6' (hard drive location) and 'instruction 30' - 'MOVE [R8],25'( memory location). in 'intruction 21' - 'SRR R7' we are finding beforehand to know how many words we need to transfer before pooling. when 'intruction 32' happens  it goes to dma did transfer 4 words at a time. in 'instruction 33'  subtracting 4 words here (7-4)=3, still 3 words to transfer. 'instruction 34' tells if there any word left, if no words break out polling . If left then set the status register according to remaining word(here 3) in 'instruction 35'. And started pooling again , go back( 'intruction 37'- 'BGT R10,loop') to the loop and transfer the remaining words (3). Polling will happen until status register become 0. 
