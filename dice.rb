require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Dice Roll</h1>

  <ul>
    <li><a href=\"/dice/2/6\">Roll two 6-sided dice</a></li>
    <li><a href=\"/dice/2/10\">Roll two 10-sided dice</a></li>
    <li><a href=\"/dice/1/20\">Roll one 20-sided die</a></li>
    <li><a href=\"/dice/5/4\">Roll five 4-sided dice</a></li>
  </ul>
  "
end


get("/zebra") do
  "Wuddup Zebra!"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
  
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
  
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}"

  "<h1> 2d10</h1>
  <p>#{outcome}</p>"
end

get("/dice/5/4") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}"

  "<h1> 2d10</h1>
  <p>#{outcome}</p>"
end
