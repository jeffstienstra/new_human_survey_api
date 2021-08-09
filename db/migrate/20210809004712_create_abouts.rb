class CreateAbouts < ActiveRecord::Migration[6.1]
  def change
    create_table :abouts do |t|
      t.integer :user_id
      t.string :name
      t.string :accomplishments
      t.string :superpower

      t.timestamps
    end
  end
end
