Many beginner programmers visualize a Delphi project as a graphical user interface
 with a unit file that consists of a series of procedures that execute in a sequence.
 In reality, most programs are event driven - meaning the flow of execution is determined
 by external occurrences called events.  

An event is a signal that informs an application that something important was triggered.
 An example of this is when a user clicks a button on a form. An OnClick event is triggered
 and a procedure is called that handles the event. This procedure is known as the event
 handler for the OnClick event.  

Event handlers are procedures that are called when a corresponding event occurs. You can use
 any valid subroutine/procedure with a matching signature/procedure header as an event handler.   

Delphi uses a standard naming convention for event handlers that combines the name of the event sender
 (the object i.e. btnDisplay) and the name of the event (excluding the “On” prefix).
 An example of this is the event handler for the OnClick event of a button named btnDisplay
 that would be named btnDisplayClick.  

Events can also allow separate tasks to interact. Let's assume that your program performs a background
 task, like downloading a file, separately from the main application or process. If a user cancels the
 download, your application can send a cancel event instructing the download process to stop.  

Delphi objects can respond to more than one event. However, an object only has one default event.
 All the other events are known as the object’s additional events. Each event is associated with its
 own event handler.  

