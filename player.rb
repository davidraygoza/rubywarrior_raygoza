class Player
@salud=nil
  def play_turn(warrior)

   
      @salud=warrior.health unless @salud
     
    if warrior.feel.empty? then
      if warrior.health<@salud then
        warrior.walk!
      elsif warrior.health<20 then
        warrior.rest!
      else
        warrior.walk!
      end
    else
        warrior.attack! 
    end
      @salud = warrior.health
  end
end
