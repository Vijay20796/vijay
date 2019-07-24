# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

/*********1.please write a program to generate all sentences where subject is in [“ i”,”you”] and verb is in [“play”,”love”] and object is in [“hockey”,”football”].***/

subjects=["I", "You"]
verbs=["Play", "Love"]
objects=["Hockey","Football"]
for i in range(len(subjects)):
    for j in range(len(verbs)):
        for k in range(len(objects)):
            sentence = "%s %s %s." % (subjects[i], verbs[j], objects[k])
            print(sentence)
            
            
/******2.Write a program to find the given input as an email id and if the input is not an email id raise an exception and print current working directory along with the execution time of the program***/

import re
import time
import os
def test_email(email):
    
    pattern = r"\"?([-a-zA-Z0-9.`?{}]+@\w+\.\w+)\"?"
    EMAIL_REGEX = re.compile(pattern)
    if not EMAIL_REGEX.match(email):              
        raise Exception('Invalid Email')
  
 
try:
    start_time = time.time()
    test_email(input('enter the mail'))   
except Exception as error:
    print(error)
    str1=os.getcwd()
    str2=str1.split('\\')    
    n=len(str2)   
    
    print("Directory %s.   %s seconds ---" % (str2[n-1] , ( time.time() - start_time)))
 


/*****3.Write a program (using function ) that asks the user for a long string containing multiple words. Print back to the user the same string except with the words in backword order. For example, say I type the string

My name is Michele
Then I would see the string:
Michele is name My ← shown back to me.
********/

def reverse_word(string):
    
    return ' '.join(string.split(' ')[::-1])
    
print(reverse_word(input('Please input a sentence:')))

or

print(reverse_word('My name is Michele')))
    
    
/**********4.Write a program, which will find all such functions between 5000 and 10000(both included) such that each digit of the number is an even number, if it is even number. Calculate the occurrence of each digit of numbers[0-9]

 The numbers obtained should be printed in a comma separated sequence on a single line*****///
 
 def evennumberrange(x,y):
    values = []
    
    for i in range(x, y):
        s = str(i)
             
        if (int(s[0])%2==0) and (int(s[1])%2==0) and (int(s[2])%2==0) and (int(s[3])%2==0):
            values.append(s)
    print (",".join(values))

evennumberrange(5000,10001)



/*********5.Take a list containing only strings. Now, take another string input from user and rearrange the elements of the list according to the number of occurrence of the string taken from user in the elements of the list:

eg list:[“no bun”,”bug bun bug bug bug”,”bunny bug”,”buggy bug bug buggy”]

string taken: “bug”

output list:[“bug bun bug bun bug bug”,”buggy bug buggy”,”buggy bug”,”no bun”]
*********/



a = ["no bun","bug bun bug bun bug bug","bunny bug","buggy bug bug buggy"]
b = "bug"
c = {}
for i in a:
  count = 0
  for j in i.split():
    if j == b:
      count = count+1
  c[count]=i
d = []
for s in sorted(c):
  d.append(c[s])
d.reverse()
print(d)


/**********6.Write a Python program to construct the following pattern, using a nested for loop.

*
**
***//////////

n=5;
for i in range(n):
    for j in range(i):
        print ('* ', end="")
    print('')

for i in range(n,0,-1):
    for j in range(i):
        print('* ', end="")
    print('')
    
    
/*********7.Use numpy to multiply a 5X3 matrix by 3X2 matrix (real matrix product) convert a float(32 bits) array into an integer (32 bits) in a place swap two rows of an array. Find the most frequent value in an array.***/

import numpy as np
Z = np.ones((5,3)) @ np.ones((3,2),dtype=np.float32)

Z = np.arange(10, dtype=np.float32)
Z = Z.astype(np.int32, copy=False) 
print(Z)

A = np.arange(25).reshape(5,5)
print(A)
A[[0,1]] = A[[1,0]]
print(A)



Z = [1,2,3,5,3,2,1,5,6,2,4,2]
print(np.bincount(Z).argmax())




/****8 Write a python program to count the number of blank spaces in a text file******/
 
with open('ss.txt', 'r') as f:
    for line in f:
        words = line.split()
        for i in words:
            for letter in i:
                if(letter.isspace):
                    k=k+1
print("Occurrences of blank spaces:")
print(k)



/*********9*********/
#1Write a function called repeat string that prints my string a total of n times. 
def repeat(str,n):
    print(str*n)
    
    
repeat('test',10)


#2 Write a python function that takes a list of words and returns the length of the longest one.///
def find_longest_word(words_list):
    word_len = []
    for n in words_list:
        word_len.append((len(n), n))
    word_len.sort()
    return word_len[-1][1]

print(find_longest_word(["PHP", "Exercises", "Backend"]))



/*******10 Create a non sequential alphanumeric password(Z should not come) ********/
import random
import string
def randomString(stringLength=10):
    letters = string.ascii_lowercase.replace('z','')+string.digits
    return ''.join(random.choice(letters) for i in range(stringLength))
    
randomString()
 
