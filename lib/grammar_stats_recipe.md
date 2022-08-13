{{PROBLEM}} Test-drive a class challenge. 
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.



2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

Name of method: class GrammarStats
Method 01 < pass an arg, string, which is our text: initialize the object
Method 02: check Returns true or false depending on whether the text begins with a capital letter and ends with a sentence-ending punctuation mark.
Method 03 < we need another instance variable here to be aware of the number of texts previously passed that are correct and the ones that failed (hash with total and correct? total => total number of strings passed correct => number of strings that passes the text): Returns as an integer the percentage of texts checked so far that passed the check defined in the `check` method. The number 55 represents 55%.

# EXAMPLE

# `extract_upper` extracts uppercase words from a list of words
uppercase_words = extract_uppercase(mixed_words)

mixed_words: a string (e.g. "hello WORLD")
uppercase_words: a list of strings (e.g. ["WORLD"])

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# EXAMPLE

textchecker = GrammarStats.new
p textchecker.check("") => "Text is empty, please insert your text"
p textchecker.check(" ") => "Text is empty, please insert your text"
p textchecker.check("Hello World!") => #true
p textchecker.check("hello World!") => #false 
p textchecker.check("Hello World.") => #true
p textchecker.check("hello world") => #false
p textchecker.check("Hello world?") => #true
p textchecker.check("Hello world,") => #false
p textchecker.check("A!") => #true
p textchecker.check("A") => #false
p "ESPECIAL: " + textchecker.check("012!").to_s => #false



4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.