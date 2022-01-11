# LearnPascal
![image](https://user-images.githubusercontent.com/91537105/148800865-b8d361ed-2fb9-4f78-af62-5a7513030cb3.png)


## How to use this document

This readme file contains my notes on the fundamental concepts of the Pascal Programming Language

Within the LearnPascal repository, there are files which contain my source code around putting Pascal into practice. 

Fundamentals 1 - 3 contain the basics such as printing messages, arthmetic, arrays, conditionals, loops, functions, procedures etc.

There will be further programs added in due course which puts the fundamentals into practice such as a Mortgage Calculator.

The aim is to ideally create:

* 3-5 Basic Programs
* 2-3 Medium Difficulty Programs 
* 1 Difficult Program

## Introduction

Pascal is a procedural, general purpose programming language, designed in 1968 and published in 1970 by Niklaus Wirth and named in honour of the French mathematician and philosopher Blaise Pascal. Pascal runs on a variety of platforms, such as Windows, Mac OS, and various versions of UNIX/Linux.

## Pascal has grown in popularity in the teaching and academics arena for various reasons:

* Easy to learn.
* Structured language.
* It produces transparent, efficient and reliable programs.
* It can be compiled on a variety of computer platforms.
* Features of the Pascal Language 

## Pascal has the following features

* Pascal is a strongly typed language.
* It offers extensive error checking.
* It offers several data types like arrays, records, files and sets.
* It offers a variety of programming structures.
* It supports structured programming through functions and procedures.
* It supports object oriented programming. 

## Facts about Pascal

* Pascal is based on the block structured style of the Algol programming language.
* Pascal was developed as a language suitable for teaching programming as a systematic discipline, whose implementations could be both reliable and efficient.
* Pascal was the primary high-level language used for development in the Apple Lisa, and in the early years of the Mac.
* In 1986, Apple Computer released the first Object Pascal implementation, and in 1993, the Pascal Standards Committee published an Object-Oriented Extension to Pascal.
 

## Why use Pascal?

Pascal allows the programmers to define complex structured data types and build dynamic and recursive data structures, such as lists, trees and graphs. Pascal offers features like records, enumerations, subranges, dynamically allocated variables with associated pointers and sets. 

Pascal allows nested procedure definitions to any level of depth. This truly provides a great programming environment for learning programming as a systematic discipline based on the fundamental concepts. 

### Some examples of implementations of Pascal are: 

* Skype
* Total Commander
* TeX
* Macromedia Captivate
* Apple Lisa
* Various PC Games
* Embedded Systems

## Program Structure

The following is a review of a bare minimum Pascal program structure:

### Pascal Program Structure 

A Pascal program basically consists of the following parts −

* Program name
* Uses command
* Type declarations
* Constant declarations
* Variables declarations
* Functions declarations
* Procedures declarations
* Main program block
* Statements and Expressions within each block
* Comments
 
Every pascal program generally has a heading statement, a declaration and an execution part strictly in that order. 

Following format shows the basic syntax for a Pascal program −

![image](https://user-images.githubusercontent.com/91537105/148799069-1c684701-2990-4e9f-8ed3-7be0b0e58953.png)

## Basic Syntax

### Variables

A variable definition is put in a block beginning with a var keyword, followed by definitions of the variables as follows:

![image](https://user-images.githubusercontent.com/91537105/148911163-039a3913-12af-45cd-9bd3-ecb80339fb0f.png)

Pascal variables are declared outside the code-body of the function which means they are not declared within the begin and end pairs, but they are declared after the definition of the procedure/function and before the begin keyword. For global variables, they are defined after the program header.

### Functions/Procedures

In Pascal, a procedure is set of instructions to be executed, **with no return value** and a function is a procedure **with a return value**. The definition of function/procedures will be as follows:

![image](https://user-images.githubusercontent.com/91537105/148911789-44dce171-9327-4ee9-962e-752c4812dce9.png)
![image](https://user-images.githubusercontent.com/91537105/148911841-eefd29c5-19b7-49a2-abef-5caa5fde7982.png)

### Comments

// Can be used for single line comments 
{......} can be used for multiline

### Case Sensitivity 

Pascal is a case non-sensitive language, which means you can write your variables, functions and procedure in either case. Like variables A_Variable, a_variable and A_VARIABLE have same meaning in Pascal.

That being said, it's always good practice to use the same variable name to avoid confusion!

### Pascal Statements

Pascal programs are made of statements. Each statement specifies a definite job of the program. These jobs could be declaration, assignment, reading data, writing data, taking logical decisions, transferring program flow control, etc.

![image](https://user-images.githubusercontent.com/91537105/148912888-0bb61ef5-3093-4372-ae1b-ce4d4177ea5c.png)

### Reserved Words in Pascal

The statements in Pascal are designed with some specific Pascal words, which are called the reserved words. For example, the words, program, input, output, var, real, begin, readline, writeline and end are all reserved words.

Following is a list of reserved words available in Pascal.

![image](https://user-images.githubusercontent.com/91537105/148913390-0cb0b00d-c5fa-4276-8935-21541e71c0d3.png)

## Data Types

Very similar set of data types to other programming languages, they are just characterised slightly differently. Integer, real, Boolean and character types are referred as standard data types. Data types can be categorized as scalar, pointer and structured data types. Examples of scalar data types are integer, real, Boolean, character, subrange and enumerated. Structured data types are made of the scalar types; for example, arrays, records, files and sets.

![image](https://user-images.githubusercontent.com/91537105/148914309-faa578fa-95a7-45ca-998b-5f2831d8b992.png)

### Type Declarations

If you remember from the program structure above, we declare our data types after uses but before declaring our variables. As you will see below, we can declare multiple variables on a single line:

![image](https://user-images.githubusercontent.com/91537105/148918344-101e05d1-95d4-46b1-8728-d3715175ea8f.png)

### Integer Types

Following table gives you details about standard integer types with its storage sizes and value ranges used in Object Pascal

![image](https://user-images.githubusercontent.com/91537105/148918562-925020d7-5887-4f64-b03e-bbfdfe89b9df.png)

### Constants

Constants are handy when you want to fix a value and prevent it from being changed. It also makes it easier if you want to change it in future as you just change it in a single location. They are declared after types and before variables.

![image](https://user-images.githubusercontent.com/91537105/148919046-7e9e21cd-2a59-4202-ba03-5e11f8527294.png)

![image](https://user-images.githubusercontent.com/91537105/148919287-19467d80-ec4d-4e10-a336-65cd4e1fd1be.png)

Remember, **all constant declarations must be given before the variable declaration.**

### Enumerated Types

Enumerated data types are user-defined data types. They allow values to be specified in a list. Only assignment operators and relational operators are permitted on enumerated data type.

![image](https://user-images.githubusercontent.com/91537105/148920626-73270964-ec24-4023-851a-1ced51f643d8.png)

The order in which the items are listed in the domain of an enumerated type defines the order of the items. For example, in the enumerated type SUMMER, April comes before May, May comes before June, and so on. The domain of enumerated type identifiers cannot consist of numeric or character constants.


