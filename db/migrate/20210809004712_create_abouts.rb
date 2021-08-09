class CreateAbouts < ActiveRecord::Migration[6.1]
  def change
    create_table :abouts do |t|
      t.integer :user_id
      t.string :name, null: false
      t.string :accomplishments, null: false
      t.string :superpower, null: false

      t.timestamps
    end
  end
end
