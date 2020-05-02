# Dieharder

#### Example data
```dieharder -f example.input -a - g 202```
#### Run test
```dieharder -d 1 -g 201 -f example1.input```

```dieharder -a -g 202 -f example.input```

## OPTIONS
```-a``` <- all tests

```-d <test number>```

```-g <201/202/generator number>```

```-f <filename>``` <- input with data


## Tests list
|test number(-d)    |Test Name                                      |Test Reliability   |
|---                |---                                            |---                |
|0                  |   Diehard Birthdays Test                      |Good               |   
|1                  |   Diehard OPERM5 Test                         |Good               |   
|2                  |   Diehard 32x32 Binary Rank Test              |Good               |   
|3                  |   Diehard 6x8 Binary Rank Test                |Good               |   
|4                  |   Diehard Bitstream Test                      |Good               |   
|5                  |   Diehard OPSO                                |Suspect            |   
|6                  |   Diehard OQSO Test                           |Suspect            |   
|7                  |   Diehard DNA Test                            |Suspect            |   
|8                  |   Diehard Count the 1s (stream) Test          |Good               |   
|9                  |   Diehard Count the 1s Test (byte)            |Good               |   
|10                 |   Diehard Parking Lot Test                    |Good               |   
|11                 |   Diehard Minimum Distance (2d Circle) Test   |Good               |   
|12                 |   Diehard 3d Sphere (Minimum Distance) Test   |Good               |   
|13                 |   Diehard Squeeze Test                        |Good               |   
|14                 |   Diehard Sums Test                           |Do Not Use         |   
|15                 |   Diehard Runs Test                           |Good               |   
|16                 |   Diehard Craps Test                          |Good               |   
|17                 |   Marsaglia and Tsang GCD Test                |Good               |   
|100                |   STS Monobit Test                            |Good               |   
|101                |   STS Runs Test                               |Good               |   
|102                |   STS Serial Test (Generalized)               |Good               |   
|200                |   RGB Bit Distribution Test                   |Good               |   
|201                |   RGB Generalized Minimum Distance Test       |Good               |   
|202                |   RGB Permutations Test                       |Good               |   
|203                |   RGB Lagged Sum Test                         |Good               |   
|204                |   RGB Kolmogorov-Smirnov Test Test            |Good               |   
|205                |   Byte Distribution                           |Good               |   
|206                |   DAB DCT                                     |Good               |   
|207                |   DAB Fill Tree Test                          |Good               |   
|208                |   DAB Fill Tree 2 Test                        |Good               |   
|209                |   DAB Monobit 2 Test                          |Good               |   