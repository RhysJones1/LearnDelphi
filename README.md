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

### Subrange Types
Subrange types allow a variable to assume values that lie within a certain range. For example, if the age of voters should lie between 18 to 100 years, a variable named age could be declared as −

![image](https://user-images.githubusercontent.com/91537105/148934450-0ddc16c4-6694-4e2e-a468-2f27666d315d.png)

![image](https://user-images.githubusercontent.com/91537105/148934599-a7b83703-be59-4e1e-ba09-4b80fae8a7a5.png)

Subrange types can be created from a subset of an already defined enumerated type, For example −

![image](https://user-images.githubusercontent.com/91537105/148934706-45144bd2-9e80-484e-b8f5-eb2ac7c93efb.png)

## Variables

A variable is nothing but a name given to a storage area that our programs can manipulate. Each variable in Pascal has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable.

The name of a variable can be composed of letters, digits, and the underscore character. It must begin with either a letter or an underscore. Pascal is not case-sensitive, so uppercase and lowercase letters mean same here. Based on the basic types explained in previous chapter, there will be following basic variable types −

![image](https://user-images.githubusercontent.com/91537105/148935586-eadcaad7-0140-44e8-a6fa-7db96a94d6d4.png)

Pascal programming language also allows defining various other types of variables such as Pointers, Arrays, Records, Sets, and Files, etc.

### Variable Declaration in Pascal

All variables must be declared before we use them in Pascal program. All variable declarations are followed by the var keyword. A declaration specifies a list of variables, followed by a colon (:) and the type. Syntax of variable declaration is −

![image](https://user-images.githubusercontent.com/91537105/148935894-f52068fe-af76-41b6-b46a-580dd4a8ed83.png)

Here, type must be a valid Pascal data type including character, integer, real, boolean, or any user-defined data type, etc., and variable_list may consist of one or more identifier names separated by commas. Some valid variable declarations are shown here −

![image](https://user-images.githubusercontent.com/91537105/148935987-44ba537b-513f-4650-a609-293e07a47894.png)

We have previously discussed that Pascal allows declaring a type. A type can be identified by a name or identifier. This type can be used to define variables of that type. For example,

![image](https://user-images.githubusercontent.com/91537105/148936603-6e29e99a-6c50-4073-a0ab-0680ad8130ae.png)

Now, the types so defined can be used in variable declarations −

![image](https://user-images.githubusercontent.com/91537105/148936701-8e266a80-6279-405c-badd-da66c47af82b.png)

Please note the difference between type declaration and var declaration. **Type declaration indicates the category or class of the types such as integer, real, etc.,** whereas the **variable specification indicates the type of values a variable may take**. Most importantly, the **variable name refers to the memory location where the value of the variable is going to be stored. This is not so with the type declaration.**

### Variable Initialization in Pascal

Variables are assigned a value with a colon and the equal sign, followed by a constant expression. 

![image](https://user-images.githubusercontent.com/91537105/148937807-5291dd12-013a-4f88-b020-874923f9ad05.png)

A further example from start to finish would look like this:

![image](https://user-images.githubusercontent.com/91537105/148937967-155f5467-3ecf-41d5-90dc-3e66b9891956.png)

The output would look like this:

![image](https://user-images.githubusercontent.com/91537105/148938265-ca64e9ff-7b71-4de8-92c2-1121dbcfe42e.png)

### Enumerated Variables

We have reviewed how simply variable types like integer or boolean, here we are discussion enumerate types. When you have declared an enumerated type, you can declare variables of that type. For example, 

![image](https://user-images.githubusercontent.com/91537105/148942122-948be1d3-3157-45fc-a405-0701587df66a.png)

The following example illustrates the concept −

![image](https://user-images.githubusercontent.com/91537105/148942225-98031d5b-75f6-4f34-a502-e21004a54c81.png)

Which provides the following output:

![image](https://user-images.githubusercontent.com/91537105/148942297-2f121af7-ed5c-4fb9-8c61-db25df23d34b.png)

### Subrange Variables

Examples of subrange variables are:

![image](https://user-images.githubusercontent.com/91537105/148942879-5ce66755-d38e-486d-ac9d-7454f081ffa6.png)

The following program illustrates the concept:

![image](https://user-images.githubusercontent.com/91537105/148943007-067c59e9-6609-4627-aeda-d948616c6c83.png)

The output would be:

![image](https://user-images.githubusercontent.com/91537105/148943111-11b24e5c-639b-44e7-8327-25a21a787390.png)

## Constants

A constant is an entity that remains unchanged during program execution. Pascal allows only constants of the following types to be declared −

* Ordinal types
* Set types
* Pointer types (but the only allowed value is Nil).
* Real types
* Char
* String

### Declaring Constants
Syntax for declaring constants is as follows −

![image](https://user-images.githubusercontent.com/91537105/148945193-48d1f07a-78f8-43a1-bab2-d6d4ca82992f.png)

![image](https://user-images.githubusercontent.com/91537105/148945290-4acc151a-ac8d-4937-845f-b2488ab5956a.png)

The following example illustrates the concept −

![image](https://user-images.githubusercontent.com/91537105/148945428-ceca3a00-298f-4060-b0fa-0f0296b52632.png)

The output is:

![image](https://user-images.githubusercontent.com/91537105/148945559-f8d98f24-c580-488c-bf55-ccc60de370d6.png)

## Operators

An operator is a symbol that tells the compiler to perform specific mathematical or logical manipulations. Pascal allows the following types of operators −
* Arithmetic
* Relational
* Boolean
* Bit
* Set
* String

### Arithmetic Operators:

Following table shows all the arithmetic operators supported by Pascal. Assume variable A holds 10 and variable B holds 20, then:

![image](https://user-images.githubusercontent.com/91537105/149752006-ba745b2d-2ac8-43a0-8bc3-2b5c4de4b7c7.png)

### Relational Operators:

Following table shows all the relational operators supported by Pascal. Assume variable A holds 10 and variable B holds 20, then:

![image](https://user-images.githubusercontent.com/91537105/149752276-a3697aa4-d803-4668-8786-b63a77b09fad.png)

### Boolean Operators

Following table shows all the Boolean operators supported by Pascal language. All these operators work on Boolean operands and produce Boolean results. Assume variable A holds true and variable B holds false, then:

![image](https://user-images.githubusercontent.com/91537105/149752427-e67e0f1e-d8eb-40ef-8acc-5787a9ad09a6.png)

### Operator Precedence

Operator precedence determines the grouping of terms in an expression. This affects how an expression is evaluated. Certain operators have higher precedence than others; for example, the multiplication operator has higher precedence than the addition operator.

For example x = 7 + 3 * 2; here, x is assigned 13, not 20 because operator * has higher precedence than +, so it first gets multiplied with 3*2 and then adds into 7.

Here, operators with the highest precedence appear at the top of the table, those with the lowest appear at the bottom. Within an expression, higher precedence operators will be evaluated first.

![image](https://user-images.githubusercontent.com/91537105/149752889-1575deeb-8017-44cd-8cb6-b34f732f5b1a.png)

## Decision Making in Pascal

Decision making structures require that the programmer specify one or more conditions to be evaluated or tested by the program, along with a statement or statements to be executed if the condition is determined to be true, and optionally, other statements to be executed if the condition is determined to be false.

Following is the general form of a typical decision making structure found in most of the programming languages:

![image](https://user-images.githubusercontent.com/91537105/149753098-b9de2854-8732-4fb4-8308-84999961d661.png)

Pascal programming language provides the following types of decision making statements:

![image](https://user-images.githubusercontent.com/91537105/149753196-8ef6011c-2df8-4eee-80b3-62dfa5fdb16f.png)

**Further information on Decision Making:**
* https://www.tutorialspoint.com/pascal/pascal_if_then_statement.htm
* https://www.tutorialspoint.com/pascal/pascal_if_then_else_statement.htm
* https://www.tutorialspoint.com/pascal/pascal_nested_if_statement.htm

## Loops

There may be a situation, when you need to execute a block of code several number of times. In general, statements are executed sequentially: The first statement in a function is executed first, followed by the second, and so on.

Programming languages provide various control structures that allow for more complicated execution paths.

A loop statement allows us to execute a statement or group of statements multiple times and following is the general form of a loop statement in most of the programming languages:

![image](https://user-images.githubusercontent.com/91537105/149753653-83e69079-5a91-4fdf-81b6-d9d7a018ec92.png)

Pascal programming language provides the following types of loop constructs to handle looping requirements:

![image](https://user-images.githubusercontent.com/91537105/149753731-5b3623cf-cadb-4e03-9b4f-fe33b8125d51.png)

**Further information on each can be found here:
* https://www.tutorialspoint.com/pascal/pascal_while_do_loop.htm
* https://www.tutorialspoint.com/pascal/pascal_for_do_loop.htm
* https://www.tutorialspoint.com/pascal/pascal_repeat_until_loop.htm
* https://www.tutorialspoint.com/pascal/pascal_nested_loops.htm

### Loop Control Statements

Loop control statements change execution from its normal sequence. When execution leaves a scope, all automatic objects that were created in that scope are destroyed. Pascal supports the following control statements.

![image](https://user-images.githubusercontent.com/91537105/149754012-1028f809-8266-4f56-aadd-c77a21873fa7.png)

**Further information on each can be found here:**
* https://www.tutorialspoint.com/pascal/pascal_break_statement.htm
* https://www.tutorialspoint.com/pascal/pascal_continue_statement.htm
* https://www.tutorialspoint.com/pascal/pascal_goto_statement.htm

## Subprograms

Pascal provides to types of sub programs:

* Functions: These return values
* Procedures: These do not return values directly

### Functions

A function is a group of statements that together perform a task. Every Pascal program has at least one function, which is the program itself, and all the most trivial programs can define additional functions.

A function declaration tells the compiler about a function's name, return type, and parameters. A function definition provides the actual body of the function.

Pascal standard library provides numerous built-in functions that your program can call. For example, function AppendStr() appends two strings, function New() dynamically allocates memory to variables and many more functions.

A function definition in Pascal consists of a **function header, local declarations and a function body**. The function header consists of the keyword function and a name given to the function. Here are all the parts of a function −

* Arguments − The argument(s) establish the linkage between the calling program and the function identifiers and also called the formal parameters. A parameter is like a placeholder. When a function is invoked, you pass a value to the parameter. This value is referred to as actual parameter or argument. The parameter list refers to the type, order, and number of parameters of a function. Use of such formal parameters is optional. These parameters may have standard data type, user-defined data type or subrange data type.
* The formal parameters list appearing in the function statement could be simple or subscripted variables, arrays or structured variables, or subprograms.
* Return Type − **All functions must return a value**, so all functions must be assigned a type. The function-type is the data type of the value the function returns. It may be standard, user-defined scalar or subrange type but it cannot be structured type.
* Local declarations − Local declarations refer to the declarations for labels, constants, variables, functions and procedures, which are application to the body of function only.
* Function Body − The function body contains a collection of statements that define what the function does. It should always be enclosed between the reserved words begin and end. It is the part of a function where all computations are done. There must be an assignment statement of the type - name := expression; in the function body that assigns a value to the function name. This value is returned as and when the function is executed. The last statement in the body must be an end statement.
* Function Declaration: A function declaration tells the compiler about a function name and how to call the function. The actual body of the function can be defined separately.
* Calling a function: While creating a function, you give a definition of what the function has to do. To use a function, you will have to call that function to perform the defined task. When a program calls a function, program control is transferred to the called function. A called function performs defined task, and when its return statement is executed or when it last end statement is reached, it returns program control back to the main program.
* To call a function, you simply need to pass the required parameters along with function name, and if function returns a value, then you can store returned value. 

The following example shows how a function is defined, declared and called:

![image](https://user-images.githubusercontent.com/91537105/149771133-3b785ad3-f91a-4c4c-949d-d688bb390212.png)
