# codingame: oDesk coding challenge

### Question 1 - Scrubble

When playing Scrabble©, each player draws 7 letters and must find a word that scores the most points using these letters.

A player doesn't necessarily have to make a 7-letter word; the word can be shorter. The only constraint is that the word must be made using the 7 letters which the player has drawn.

For example, with the letters  etaenhs, some possible words are: ethane, hates, sane, ant.


**LETTER SCORING:**
In Scrabble©, each letter is weighted with a score depending on how difficult it is to place that letter in a word. You will see below a table showing the points corresponding to each letter:
 
![letters_weight](http://imageshack.us/a/img194/1852/vi2f.png)

The word banjo earns 3 + 1 + 1 + 8 + 1 = 14 points.


A dictionary of authorized words is provided as input for the program. The program must find the word in the dictionary which wins the most points for the seven given letters. If two words win the same number of points, then the word which appears first in the order of the given dictionary should be chosen.
 

All words will only be composed of alphabetical characters in lower case. There will always be at least one possible word.
 
**INPUT:**

Line 1: The number N of words in the dictionary
N following lines: The words in the dictionary. One word per line.
Last line: The 7 letters available.
 
**OUTPUT:**

The word that scores the most points using the available letters (1 to 7 letters). The word must belong to the dictionnary. There is always a solution.
 
**CONSTRAINTS:**

0 < N < 100000
Words in the dictionary have a maximum length of 30 characters.
 
**EXAMPLE:**

![example](http://imageshack.us/a/img819/9324/cyzc.png)
