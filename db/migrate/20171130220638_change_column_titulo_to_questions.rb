class ChangeColumnTituloToQuestions < ActiveRecord::Migration[5.1]
  def change
  	rename_column :questions, :Titulo, :titulo
  end
end
