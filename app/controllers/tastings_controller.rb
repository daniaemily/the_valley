class TastingsController < ApplicationController
  def index
    @tastings = Tasting.all
  end
end
