class Palpite < ActiveRecord::Base
  attr_accessible :gol_mandante, :gol_visitante, :id_jogo, :id_palpite, :id_usuario
end
