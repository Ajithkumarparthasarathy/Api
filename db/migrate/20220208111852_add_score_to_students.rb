class AddScoreToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :score
  end
end
