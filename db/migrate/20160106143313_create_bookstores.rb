class CreateBookstores < ActiveRecord::Migration
  def change
    create_table :bookstores do |t|
      t.string :title
      t.text :description
      t.string :author
      t.decimal :price

      t.timestamps null: false
    end
  end
end
