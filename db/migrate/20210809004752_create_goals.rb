class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.text :short_term_goal
      t.text :long_term_goal

      t.timestamps
    end
  end
end
