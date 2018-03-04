class DeviseCreateBoard < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :user
      t.integer :score
      t.integer :games
      t.timestamps
    end
    
    Board.create :user => "inigo", :score => 0, :games => 0
    Board.create :user => "edrizio", :score => 0, :games => 0
  end
end
