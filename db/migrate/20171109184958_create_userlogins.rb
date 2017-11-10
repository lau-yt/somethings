class CreateUserlogins < ActiveRecord::Migration[5.1]
  def change
    create_table :userlogins do |t|
      t.string :email
      t.string :contr
      t.boolean :on

      t.timestamps
    end
  end
end
