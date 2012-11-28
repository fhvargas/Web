class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :id_usuario
      t.string :nome_usuario
      t.string :password
      t.string :email
      t.string :nome_completo

      t.timestamps
    end
  end
end
