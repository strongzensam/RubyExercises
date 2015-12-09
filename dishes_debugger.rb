#Dishes Debugger

# How the code either uses, or fails to use the principles we discussed?
#Before you can really start debugging you'll want to indent the code properly.

# Run the code from the console. You should encounter errors before it will run completely. 
# Read each error carefully and fix it using the minimum amount you need and keeping with the single responsibility principle. 
# Only one error should be fixed by adding code to the test code. 
# For everything else, you should only modify the classes.

# Original Code

class Cabinet
  attr_reader :contents
# Are there any more methods needed in this class?
  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump_cabinet  # what should this method return?
    @contents = []
    puts "Your cabinet is empty."
  end

  def view_contents
    puts "The cabinet contains:"
    @contents.each {|cup| puts "- " + cup.type }
  end
end


  class Cup
    attr_reader :type, :clean
  # Are there any more methods needed in this class?
  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def drink
    puts "drinking with the #{type}"
    @clean = false
  end
  def clean_cup
    @clean = true
  end
end



# DO NOT MODIFY THE BELOW CODE UNLESS....
tech_space_cup = Cup.new("Standard Cup")

tech_space_cabinet = Cabinet.new
tech_space_cabinet.add_item(tech_space_cup)
tech_space_cabinet.add_item(Cup.new("Funky Mug"))
tech_space_cabinet.add_item(Cup.new("Super Funky Cup"))
tech_space_cabinet.view_contents

tech_space_cabinet.remove_item
tech_space_cabinet.view_contents
classy_cup = Cup.new("classy_cup")


tech_space_cabinet.add_item(classy_cup)

tech_space_cabinet.view_contents

class Exception
end

removed_cup = tech_space_cabinet.remove_item(classy_cup)
removed_cup.drink
removed_cup.clean_cup
raise Exception.new("Your cup is not actually clean!") unless removed_cup.clean_cup == true

tech_space_cabinet.view_contents
tech_space_cabinet.dump_cabinet
raise Exception.new("Your cabinet is not actually empty") unless tech_space_cabinet.contents.empty?
tech_space_cabinet.view_contents

# What will you need here in order to remove a classy_cup? You may modify the code for this error.
i_heart_sf_cup = Cup.new("I Heart SF Cup")
tech_space_cabinet.add_item(i_heart_sf_cup)

raise Exception.new("You don't have a I Heart SF Cup to remove") unless tech_space_cabinet.contents.include?(i_heart_sf_cup)
tech_space_cabinet.remove_item(i_heart_sf_cup) #What is happening when you run this the first time?
classy_cup.drink
puts classy_cup.clean #=> this should be false

#Make a few notes on how youo feel relates to OOP/Single single responsibility principle.  