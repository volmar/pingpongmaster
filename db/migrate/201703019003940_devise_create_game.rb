class DeviseCreateGame < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :user1
      t.string :user2
      t.integer :score1
      t.integer :score2
      t.timestamps :date
    end
  end
end
