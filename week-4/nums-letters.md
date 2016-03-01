## 4.2 Numbers, Letters, and Variable

[4.2.1 Defining Variables](https://github.com/billdevcode/phase-0/blob/master/week-4/defining-variables.rb)
[4.2.2 Simple String Methods](https://github.com/billdevcode/phase-0/blob/master/week-4/simple-string.rb)



#### What does puts do?
`puts` returns `nil` and prints the output to the console with a new line.

#### What is an integer? What is a float?
Integer is a whole number without decimal while a float is a number with decimal. 

#### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
The difference is that integer division rounds down to a whole number without decimal while a float division 
won't. When we do arithmetic with integers, we'll get integer answers and in integers `9 / 2 = 4` but if 
we do arithmetic with floats then `9.0 / 2.0 = 4.5`. So it's just a way the computer separates numbers 
into two groups since most programs don't use floats, for example we can't read 7.4 emails or watch browse 1.7 
web pages. 

* Hours in a year
```ruby
365 * 24
=> 8760
```

* Minutes in a decade
```ruby
365 * 24 * 60 * 10
=> 5256000
```

