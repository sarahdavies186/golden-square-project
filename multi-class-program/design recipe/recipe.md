# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

-diary
-diary entries
-todo list
-mobile phone numbers

-keep a diary
-read diary entries
-read based on time and reading speed
-keep a todo list
-see a list of all mobile phone numbers


## 2. Design the Class System

```
https://miro.com/app/board/uXjVPkFGBxg=/?share_link_id=349653453948
```

_Also design the interface of each class in more detail._

```ruby
class Diary
  def initialize
    # ...
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Entry gets added to the Diary
    # Returns nothing
  end

  def all
    # Returns a list of diary entries
  end
  
  def find_best_entry_for_reading_time(wpm, time)  # `wpm` is an integer representing the number of words the user can read
    # per minute.
    # `minutes` is an integer representing the number of minutes the user
    # has to read.
    # Returns an instance of diary entry representing the entry that is closest
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

class DiaryEntry
  def initialize(title, content) # title and content are both strings
  end

  def title
    # Returns title
  end

   def content
    # Returns content
  end

  def count_words
    # Returns word count
end

class TaskList
  def initialize
    # ...
  end

    def add(task) # entry is an instance of DiaryEntry
    # Entry gets added to the Diary
    # Returns nothing
  end

  def all
    # Returns a list of diary entries
  end
end

class Task
  def initialize(task) # task is a string
  end

  def task
    # Returns the task as a string
  end
end

class Contacts
  def initialize 
  end

  def contact(name, number)
  end
end
  

```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby


#1 Returns a list of diary entries when added 

#3 Return diary entry suitable for given reading time 
#4 Searches diary entries to return mobile numbers 
#5 Adds taks to task list
#6 Returns empty task list if no tasks

```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# Diary
#1 Initlalize
#1 Returns an empty list if no diary entries
#2 Returns an error if no diary entries to read in reading time

# DiaryEntry
#1 Returns title and content
#2 Count words of diary entry

# Task List
#1 Initialize
#2 Returns empty task list if no tasks 

# Task
#1 Adds and returns task

#Contacts
#1 Returns mobile phone numbers

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._

