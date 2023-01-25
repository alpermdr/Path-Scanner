require("net/http")
puts """
      .o.       ooooo        oooo    oooo       .o.            ooooooooooooo oooooooooooo       .o.       ooo        ooooo 
     .888.       888          888   .8P        .888.           8    888    8  888       8      .888.       88.       .888  
    .88888.      888          888  d8         .8 888.               888       888             .8 888.      888b     d 888  
   .8   888.     888          88888[         .8   888.              888       888oooo8       .8   888.     8 Y88. .P  888  
  .88ooo8888.    888          888 88b.      .88ooo8888.             888       888           .88ooo8888.    8   888    888  
 .8       888.   888       o  888   88b.   .8      888.             888       888       o  .8       888.   8    Y     888  
o88o     o8888o o888ooooood8 o888o  o888o o88o     o8888o          o888o     o888ooooood8 o88o     o8888o o8o        o888o



 	
						   Coded by kommandant 
"""
begin
puts "Enter the url:"
url = gets.to_s
puts """
Enter The protocol:
1)http
2)https
"""
protocol= gets.to_s
if protocol.chomp() == "1"
    protocol = "http://"
elsif protocol.chomp() == "2"
     protocol = "https://"
end
puts "Enter the file:"
file = gets.to_s
for line in File.open(file,"r+")
    endurl = protocol+url+"/"+line
    uri = URI(endurl)
    res = Net::HTTP.get_response(uri)
    puts "[#{res.code}] #{endurl}"
end
rescue
puts "please enter the parameters correctly."
end 
