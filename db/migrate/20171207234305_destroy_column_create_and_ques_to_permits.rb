class DestroyColumnCreateAndQuesToPermits < ActiveRecord::Migration[5.1]
  def change
  	remove_column :permits, :create_ans_ques, :string
  	remove_column :permits, :integer, :string
  end
end
