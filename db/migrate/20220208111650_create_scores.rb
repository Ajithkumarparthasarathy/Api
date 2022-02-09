class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.string :tamil
      t.string :eng
      t.string :maths

      t.timestamps
    end
  end
end