class CreateDutyOccurences < ActiveRecord::Migration[5.1]
  def change
    create_table :duty_occurences do |t|
      t.integer :duty_id
      t.boolean :finished
      t.datetime :date

      t.timestamps
    end
  end
end
