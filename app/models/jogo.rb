class Jogo < ActiveRecord::Base
  attr_accessible :gols_mandante, :gols_visitante, :id_jogo, :time_mandante, :time_visitante
   validates :gols_mandante, :presence => true
   validates :gols_visitante, :presence => true
   validates :id_jogo, :presence => true
   validates :time_mandante, :presence => true
   validates :time_visitante, :presence => true
end
