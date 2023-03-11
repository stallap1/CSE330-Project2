# CSE330-Project2
Hello from Team #1😊 we hope that you run into less issues by using this repo instead of the orignal.   
Message *pandasandwich#7631* on discord if you have any questions.  
**Throw us a follow on github if this helps**  
- [aimarket](https://github.com/aimarket)
- [RCal-Dev](https://github.com/RCal-Dev)
- [Girps](https://github.com/Girps)
- [MaazChohan](https://github.com/MaazChohan)

##### Project 2 steps to run the code
How to test the code.
1. Download the zip of the git repo
2. Unzip the repo.
3. Move the test kernel module code (producer_consumer.c) to the cloned repo.
4. use command `chmod +x ./test.sh &&  chmod +x ./ps_time.sh`
5. Run the `./test.sh 10 5 1 0 1 25` script with the test arguments
test.sh < # of process > < Buffer Size > < # of Producer > < # of Consumer > < Number of lines to be displayed from the dmesg >

## Test Cases
### Test Case-1
./test.sh 10 5 1 0 25
Expected output: producer thread should exit without errors
![tc1](https://user-images.githubusercontent.com/123608796/219263940-84c382c4-9e89-434d-97a4-cfe45a492507.png)
### Test Case-2
./test.sh 10 5 0 1 25
Expected output: consumer thread should exit without errors.'
![tc2](https://user-images.githubusercontent.com/123608796/219264031-6ae24783-0eac-41e3-8a55-73ef11d95f1a.png)
### Test Case-3
./test.sh 10 50 1 1 25
Expected output: Producer should produce unique items and consumer should
consumer each item only once. The elasped time match with the ps output
![tc3](https://user-images.githubusercontent.com/123608796/219264152-d2a9ba8a-7252-455c-870c-c775cf08030f.png)
### Test Case-4
./test.sh 100 50 1 1 25
![tc4](https://user-images.githubusercontent.com/123608796/219264244-01bcffd6-bef4-4fb7-94c0-c68fba006d16.png)
### Test Case-5
./test.sh 1000 50 1 1 25
![tc5](https://user-images.githubusercontent.com/123608796/219264375-e85edc4b-242d-4165-adab-1d96af1e2734.png)
###Test Case-6
./test.sh 1000 50 1 3 25
![tc6](https://user-images.githubusercontent.com/123608796/219264448-796987ad-221c-453c-a18a-76d5458d839f.png)
# Code
sync.c - This file has implementation of Producer Consumer Kernel threads.
ptime.c - This is only focused on time elapsed of the process without
Producer/Consumer
ps_time.sh - This is the test code to find the total elapsed time using the ps command
The output from the "ps" command and the Kernel module will have some tolerance limit
especially for 1000 processes.
