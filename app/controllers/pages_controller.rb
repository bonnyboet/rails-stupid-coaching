# comment
class PagesController < ApplicationController
  def question; end

  def answer
    @search_input = params[:question]
    @answer =
      if @search_input == 'I am going to work'
        'Great!'
      elsif @search_input.end_with?('?') == true
        'Silly question, get dressed and go to work!'
      else
        'I don\'t care, get dressed and go to work!'
      end
  end
end
