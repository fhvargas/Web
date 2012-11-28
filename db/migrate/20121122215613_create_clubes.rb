class CreateClubes < ActiveRecord::Migration
  def change
    create_table :clubes do |t|
      t.integer :id
      t.string :nome
      t.text :descricao
      t.string :estadio

      t.timestamps
    end
  end
end
