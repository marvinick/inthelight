class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :title
      t.text :content
      t.string :representative

      t.timestamps null: false
    end
  end
end
