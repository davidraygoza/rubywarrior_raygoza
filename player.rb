#Practice by: David Raygoza Ramirez
#Date: April 13 2012
#Level 7 Code
class Player
@health_warrior=nil

  def play_turn(warrior)

    @health_warrior=warrior.health unless @health_warrior
    if warrior.feel.wall? then 
      warrior.pivot!
    else
    if warrior.feel.empty? then
      if warrior.health<@health_warrior then
        if warrior.health<8 then
          warrior.walk! :backward
        else
            warrior.walk! :forward
        end
      else
        if warrior.health<15 then
          warrior.rest!
        else
            warrior.walk! :forward
        end
      end

    else
       if warrior.feel.captive?
        warrior.rescue!
      else
        warrior.attack!
      end
        
    end
      @health_warrior = warrior.health
  end
  end
end
