class WordgameController < ApplicationController
  def game
    @grid = BoggleGame.generate_grid(9)
    session[:grid] = @grid
    session[:start_time] = Time.now
  end

  def score
    @attempt = params[:word]
    grid = session[:grid]
    start_time = Time.parse(session[:start_time])
    end_time = Time.now
    @result = BoggleGame.run_game(@attempt, grid, start_time, end_time)
  end
end


