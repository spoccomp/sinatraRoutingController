require 'sinatra'
require 'httparty'


get "/Index" do 
  "hello world"
end


get "/jokes/:type" do
  # nerdy explicit
  #get user info to decide if nerdy or explicit
  #params[:type]
# http://api.icndb.com/jokes

# if params[:type] == "nerdy"
#    jokes_nerdy= HTTParty.get("http://api.icndb.com/jokes/random?limitTo=[nerdy]")
#    jokes_nerdy["value"]["joke"]
# elsif params[:type] == "explicit"
#    jokes_explicit= HTTParty.get("http://api.icndb.com/jokes/random?limitTo=[explicit]")
#    jokes_explicit["value"]["joke"]
# end 
  # puts by_all_data["value"][0]["joke"]
  #jokes["value"][0]["joke"]

  jokes= HTTParty.get("http://api.icndb.com/jokes/random?limitTo=[#{params[:type]}]")
  jokes["value"]["joke"]

end

get "/suprise" do
  random_joke = rand(0..1)
   if random_joke == 0
    jokes_nerdy= HTTParty.get("http://api.icndb.com/jokes/random?limitTo=[nerdy]")
  
    "
    <style>
    h2 {
      color: red;
      font-family:roboto;
    }
    </style>

      <h2>This is a nerdy joke, kid!</h2>
      <p>#{jokes_nerdy["value"]["joke"]}</p>
    "
       elsif random_joke == 1
      jokes_explicit= HTTParty.get("http://api.icndb.com/jokes/random?limitTo=[explicit]")
      "
        <style>
          h2 {
              color: blue;
              font-family:roboto;
          }
        </style>

        <h2>This joke may not be safe for work!</h2> 
        <p>#{jokes_explicit["value"]["joke"]}</p>
      "
   end
end


