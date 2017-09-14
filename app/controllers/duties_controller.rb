class DutiesController < ApplicationController

  # t.integer "category_id"
  # t.integer "user_id"
  # t.string "title"
  # t.boolean "every_day"
  # t.string "days_of_week"
  # t.string "days_of_month"
  # t.datetime "until_date"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false

  def index
    @duties = Duty.all
    @categories = Category.all
  end

  def create
     @duty = Duty.new(duty_params)
     @duty.user_id = current_user.id
     if @duty.save
       render json: @duty
     else
       render json: @duty.errors, status: :unprocessable_entity
     end
  end

  private

  def duty_params
    params.require(:duty).permit(:title, :category_id, :every_day, :days_of_week, :days_of_month, :until_date, :user_id)
  end
end
