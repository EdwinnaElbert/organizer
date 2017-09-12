class CreateDuties < ActiveRecord::Migration[5.1]
  def change
    create_table :duties do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :title
      t.boolean :every_day
      t.string :days_of_week
      t.string :days_of_month
      t.datetime :until_date

      t.timestamps
    end
  end
end
