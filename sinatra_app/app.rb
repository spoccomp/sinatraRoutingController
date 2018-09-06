require "sinatra"
#http://localhost:4567
const NAME = "Richard"
names = {
  "edward elric" => "alchemist / pokemon master",
  "ronnie the html G.O.A.T" => "team rocket",
  "yorvin" => "the dominican",
  
}


get "/" do
  puts "Hello human, are you ready for us robots to take over!? |8-D|"
end
get "/sei" do
  puts "Lets code!"
end
get "my_name" do
  puts "Hello, my name is #{NAME}"
end