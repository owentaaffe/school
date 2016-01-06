class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :Q1
      t.integer :Q2
      t.integer :Q3
      t.integer :Q4
      t.integer :Q5
      t.integer :Q6
      t.string :Q

      t.timestamps null: false
    end
  end
end
