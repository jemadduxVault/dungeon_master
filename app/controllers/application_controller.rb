class ApplicationController < ActionController::Base
  protect_from_forgery

  def homepage

  end

  def start
    @game_code = nacl(5)
    Game.create(game_code: @game_code)
  end

  def join

  end

private
  def nacl(length)
    x ||= [('a'..'z'),('A'..'Z'),('0'..'9')].map{|i| i.to_a}.flatten
    (0..(length-1)).map{ x[rand(x.length)] }.join
  end
end
