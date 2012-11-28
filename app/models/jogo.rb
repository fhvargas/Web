class Jogo < ActiveRecord::Base
  attr_accessible :gols_mandante, :gols_visitante, :id_jogo, :time_mandante, :time_visitante
end
