class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
