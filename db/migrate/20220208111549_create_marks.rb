class CreateMarks < ActiveRecord::Migration[7.0]
  def change
    create_table :marks do |t|
      t.string :tamil
      t.string :eng
      t.string :maths

      t.timestamps
    end
  end
end
