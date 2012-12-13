class Palpite < ActiveRecord::Base
  attr_accessible :gol_mandante, :gol_visitante, :id_jogo, :id_palpite, :id_usuario
   validates :gol_mandante, :presence => true
   validates :gol_visitante, :presence => true
   validates :id_jogo, :presence => true
end
