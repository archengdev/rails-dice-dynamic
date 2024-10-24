class DiceController < ApplicationController
  def home
    render({:template => "dice/home"})
  end
  def dice
    @num_dice = params.fetch("num").to_i
    @sides = params.fetch("sides").to_i
    @rolls = []
    @num_dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end
    
    render({:template => "dice/dynamic"})
  end
end
