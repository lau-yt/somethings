class Addcolumanswer < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions, :answers_count,:integer,  :default => 0, :null => false
  	add_column :universities, :questions_count,:integer,  :default => 0, :null => false
  end
end
