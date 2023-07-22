class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.integer :employees_count, default: 0 #employee should be plural

      t.timestamps
    end
  end
end
