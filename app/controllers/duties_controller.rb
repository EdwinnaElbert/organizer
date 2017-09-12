class DutiesController < ApplicationController
  def index
    @duties = Duty.all
    @categories = Category.all
  end
end
