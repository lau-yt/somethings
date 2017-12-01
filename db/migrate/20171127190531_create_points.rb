class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.integer :puntos
      t.integer :user_id

      t.timestamps
    end
  end
end
