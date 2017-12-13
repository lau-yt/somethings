class Addcolumanswer < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions, :answers_count,:integer,  :default => 0, :null => false
  	add_column :universities, :questions_count,:integer,  :default => 0, :null => false
  	add_column :users, :marca, :boolean, :default => false, :null => false # migrar a heroku add
  end
end
