# Virus Predictor

# I worked on this challenge [with: Alex Wen].
# We spent [2.5] hours on this challenge.

# EXPLANATION OF require_relative
# require is normally used to load Ruby extensions such as time or spreadsheets
# require prevents the same file from being loaded

# require_relative is normally used to load files that we created ourselves
# require_relative uses the directory of where the file is in-relative to the file being run

require_relative 'state_data' 

class VirusPredictor
# starting default of each instance of the class  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# runs the two other methods 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# it takes a look at the pop density, and multiplies it with the population depending on the density. 
# Floor rounds it down. Prints the number of deaths for that state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    num = 0
    if @population_density >= 200
      num = 0.4
    elsif @population_density >= 150
      num = 0.3
    elsif @population_density >= 100
      num = 0.2
    elsif @population_density >= 50
      num = 0.1
    else
      num = 0.05
    end
    number_of_deaths = (@population * num).floor        
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  
# calculate based on pop density, how fast the spread of the virus will be. Prints the speed in months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section
=begin

1. What are the differences between the two different hash syntaxes shown in the state_data file?

Using example:   "Alabama" => {population_density: 94.65, population: 4822023},
"Alabama" is a string and the key of STATE_DATA hash. It's value is a hash.
population_density: is a symbol with a value of 94.65.
population: is a symbol also. 

2. What does require_relative do? How is it different from require?

require is normally used to load Ruby extensions such as time or spreadsheets
and require prevents the same file from being loaded.

require_relative is normally used to load files that we created ourselves
and uses the directory of where the file is in-relative to the file being run.

3. What are some ways to iterate through a hash?

There are many methods to iterate through a hash: each, map, select, collect, etc.

4. When refactoring virus_effects, what stood out to you about the variables, if anything?

virus_effects was calling 2 other methods and passing them instance variables as arguments 
so the first thing that stood out was why can't those 2 methods access the instance 
variables themselves. 

5. What concept did you most solidify in this challenge?

At first I thought we should output the all the states by making an iterator inside 
the class. My thoughts were we needed to use the methods and they're located inside 
the class. But then our guide, Sara reminded us that the driver codes were outside 
the class and already testing 4 states. The tests all involved making a new class 
instance and we can't do that if we iterate through STATE_DATA from inside the class. 
That makes perfect sense. I think what I thought of is doable but just takes more work 
while iterating through STATE_DATA from outside the class is much easier. 

=end