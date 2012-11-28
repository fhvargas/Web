class CreateJogos < ActiveRecord::Migration
  def change
    create_table :jogos do |t|
      t.integer :id_jogo
      t.string :time_mandante
      t.string :time_visitante
      t.string :gols_mandante
      t.string :gols_visitante

      t.timestamps
    end
  end
end
