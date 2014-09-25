#Generate Fibonacci sequence inside a SQL Table


##WHY
While learning SQL(ite) I decided to give a try and generate the [Fibonacci Sequence](http://en.wikipedia.org/wiki/Fibonacci_number) inside a table.
To do this I used SQLite3 (on Linux).

This is not what SQL is for. You should not do soemthing like this, ever.


See all the SQLite commands inside the file commands.sql 

##HOW
To test it you first need sqlite3 installed and then from command line you need to issue:

    sqlite3 database.db < commands.sql

and if it works it will give you a display of the Fibonacci Sequence inside a table.

##AND NOW?
I will try to improve this when I learn new stuff like triggers and other things.
If you feel like you want to improve this then don't wait and contribute to the life of this monster.