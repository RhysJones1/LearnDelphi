# Classes and Objects 
We can imagine our universe made of different objects like sun, earth, moon, etc. Similarly, we can imagine our car made of different objects like wheel, steering, gear, etc. Same way, there are object-oriented programming concepts, which assume everything as an object and implement a software using different objects. In Pascal, there are two structural data types used to implement a real world object −

- Object types
- Class types

Object-Oriented Concepts

Before we go in detail, let's define important Pascal terms related to Object-Oriented Pascal.

*Object* − An Object is a special kind of record that contains fields like a record; however, unlike records, objects contain procedures and functions as part of the object. These procedures and functions are held as pointers to the methods associated with the object's type.

*Class* − A Class is defined in almost the same way as an Object, but there is a difference in way they are created. The Class is allocated on the Heap of a program, whereas the Object is allocated on the Stack. It is a pointer to the object, not the object itself.

Instantiation of a class − Instantiation means creating a variable of that class type. Since a class is just a pointer, when a variable of a class type is declared, there is memory allocated only for the pointer, not for the entire object. Only when it is instantiated using one of its constructors, memory is allocated for the object. Instances of a class are also called 'objects', but do not confuse them with Object Pascal Objects. In this tutorial, we will write 'Object' for Pascal Objects and 'object' for the conceptual object or class instance.

Member Variables − These are the variables defined inside a Class or an Object.

Member Functions − These are the functions or procedures defined inside a Class or an Object and are used to access object data.

Visibility of Members − The members of an Object or Class are also called the fields. These fields have different visibilities. Visibility refers to accessibility of the members, i.e., exactly where these members will be accessible. Objects have three visibility levels: public, private and protected. Classes have five visibility types: public, private, strictly private, protected and published. We will discuss visibility in details.

Inheritance − When a Class is defined by inheriting existing functionalities of a parent Class, then it is said to be inherited. Here child class will inherit all or few member functions and variables of a parent class. Objects can also be inherited.

Parent Class − A Class that is inherited by another Class. This is also called a base class or super class.

Child Class − A class that inherits from another class. This is also called a subclass or derived class.

Polymorphism − This is an object-oriented concept where same function can be used for different purposes. For example, function name will remain same but it may take different number of arguments and can do different tasks. Pascal classes implement polymorphism. Objects do not implement polymorphism.

Overloading − It is a type of polymorphism in which some or all of operators have different implementations depending on the types of their arguments. Similarly functions can also be overloaded with different implementation. Pascal classes implement overloading, but the Objects do not.

Data Abstraction − Any representation of data in which the implementation details are hidden (abstracted).

Encapsulation − Refers to a concept where we encapsulate all the data and member functions together to form an object.

Constructor − Refers to a special type of function which will be called automatically whenever there is an object formation from a class or an Object.

Destructor − Refers to a special type of function which will be called automatically whenever an Object or Class is deleted or goes out of scope.


