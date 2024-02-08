class PagesController < ApplicationController
  def home
    render "home"
  end

  def play
    @num_dice = params[:number_of_dice].to_i
    @sides = params[:how_many_sides].to_i
    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end

    render "result"
    
  end
end
