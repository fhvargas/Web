class Classificacao < ActiveRecord::Base
  attr_accessible :derrotas, :empates, :gols, :golscontra, :id_time, :jogos, :pontos, :saldogols, :vitorias
end
