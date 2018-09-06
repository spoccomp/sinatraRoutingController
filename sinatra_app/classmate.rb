class Classmate
  attr_reader :name, :super_power
  @@store_it = {}
  def initialize(name, super_power)
    @name = name
    @super_power = super_power
    
  end
  def i_have_the_power
    return "My name is: #{@name} and my super power is #{@super_power}"
  end
  def add_classmate()
    @@store_it[@name] = @super_power
  end
  def self.show_all_classmates()
   
     
      
       output = '<ul>'
       @@store_it.each_key do |name|
         output += "
         <li> Hello, my name is #{name.to_s} </li>
         "
         puts "Hello, my name is #{name.to_s}"
       end
       output + '</ul>'
    
  end
end


rich = Classmate.new("rich","be-friend")
stiffler = Classmate.new("stiffler", "man-blocker")
orlando = Classmate.new("orlando","sup with that broheme")
puts rich.i_have_the_power
puts stiffler.i_have_the_power
puts orlando.i_have_the_power
rich.add_classmate()
stiffler.add_classmate()
orlando.add_classmate()
Classmate.show_all_classmates()
