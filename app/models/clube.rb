class Clube < ActiveRecord::Base
  attr_accessible :descricao, :estadio, :id, :nome
   validates :descricao, :presence => true
   validates :estadio, :presence => true
   validates :nome, :presence => true
end
