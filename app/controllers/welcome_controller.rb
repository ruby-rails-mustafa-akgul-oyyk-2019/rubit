class WelcomeController < ApplicationController

  def index
    # do some thinks
    params[:id]
  end

  def new
  end

  def destroy
    render plain: 'Sildim seni!'
  end
end
