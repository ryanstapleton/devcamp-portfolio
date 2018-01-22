class PortfoliosController < ApplicationController

  def index
    # Calling the model "Portfolio.all" and creating an
    # instance variable "@portfolio_items" made available to the view
    @portfolio_items = Portfolio.all
  end

  def show
  end

  def new
  end

end
