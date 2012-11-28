class CreateClassificacaos < ActiveRecord::Migration
  def change
    create_table :classificacaos do |t|
      t.integer :id_time
      t.integer :pontos
      t.integer :jogos
      t.integer :vitorias
      t.integer :empates
      t.integer :derrotas
      t.integer :gols
      t.integer :golscontra
      t.integer :saldogols

      t.timestamps
    end
  end
end
