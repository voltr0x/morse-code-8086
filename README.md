# morse-code-8086

A morse code generator for 8086 micro controller - my project during my undergrad.

The microcontroller will be in serial communication with the PC and will take input of letters from the user and microprocessor will generate Morse Code of the particular letter.

Morse code is a method of transmitting text information as a series of on-off tones, lights, or clicks that can be directly understood by a skilled listener or observer without special equipment. In this case we use lights ie. LED. Each Morse code symbol represents either a text character (letter or numeral) or a prosign and is represented by a unique sequence of dots and dashes. The dot duration is the basic unit of time measurement in code transmission. The duration of a dash is three times the duration of a dot. Each dot or dash is followed by a short silence, equal to the dot duration. The letters of a word are separated by a space equal to three dots (one dash), and the words are separated by a space equal to seven dots. To increase the speed of the communication, the code was designed so that the length of each character in Morse is approximately inverse to its frequency of occurrence in English. Thus the most common letter in English, the letter "E", has the shortest code, a single dot.
In an emergency, Morse code can be sent by improvised methods that can be easily "keyed" on and off, making it one of the simplest and most versatile methods of telecommunication. The most common distress signal is SOS – three dots, three dashes, and three dots – internationally recognized by treaty.

In this project we will send the SOS message from PC to the microcontroller and the microcontroller will generate the morse code.

![image](https://github.com/voltr0x/morse-code-8086/assets/22748763/adc29fde-73bd-40e9-862e-30ebcc06ac88)

