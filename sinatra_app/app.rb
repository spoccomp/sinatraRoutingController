require 'sinatra'
require_relative 'classmate'
#http://localhost:4567
NAME = "Richard"
names = {
  "edward elric" => "alchemist / pokemon master",
  "ronnie the html G.O.A.T" => "team rocket",
  "yorvin" => "the dominican"
  
}

rich = Classmate.new("rich","be-friend")
stiffler = Classmate.new("stiffler", "man-blocker")
orlando = Classmate.new("orlando","sup with that broheme")
puts rich.i_have_the_power
puts stiffler.i_have_the_power
puts orlando.i_have_the_power
Classmate.show_all_classmates()

get "/" do
  puts "Hello human, are you ready for us robots to take over!? |8-D|"
  "<h2>Hello human, are you ready for us robots to take over!? |8-D|</h2"
end
get "/sei" do
  puts "Lets code!"
end
get "/my-name" do
   
  output = '<ul>'
  names.each_key do |name|
    output += "
    <li> Hello, my name is #{name.to_s} </li>
    "
    puts "Hello, my name is #{name.to_s}"
  end
  output + '</ul>'
     
end


get "/rich" do
  rich.i_have_the_power()
end
get "/stiffler" do
  stiffler.i_have_the_power()
end
get "/orlando" do 
  orlando.i_have_the_power()
end
get "/display-all-students" do
  Classmate.show_all_classmates()
end