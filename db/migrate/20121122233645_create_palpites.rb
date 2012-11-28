class CreatePalpites < ActiveRecord::Migration
  def change
    create_table :palpites do |t|
      t.integer :id_palpite
      t.integer :id_jogo
      t.integer :id_usuario
      t.integer :gol_mandante
      t.integer :gol_visitante

      t.timestamps
    end
  end
end
