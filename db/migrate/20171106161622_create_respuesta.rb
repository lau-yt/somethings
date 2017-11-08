class CreateRespuesta < ActiveRecord::Migration[5.1]
  def change
    create_table :respuesta do |t|
      t.boolean :mejorResp
      t.text :desc

      t.timestamps
    end
  end
end
