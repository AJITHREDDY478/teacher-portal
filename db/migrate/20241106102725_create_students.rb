class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :subject_name
      t.integer :marks

      t.timestamps
    end
  end
end
