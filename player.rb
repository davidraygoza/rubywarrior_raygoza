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
      if warrior.feel.captive? then
        warrior.rescue! 
      else
          warrior.attack! 
      end
        
    end
      @salud = warrior.health
  end
end
