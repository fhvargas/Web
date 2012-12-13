class Usuario < ActiveRecord::Base
  attr_accessible :email, :id_usuario, :nome_completo, :nome_usuario, :password
   validates :email, :presence => true
   validates :nome_completo, :presence => true
   validates :nome_usuario, :presence => true
   validates :password, :presence => true
end
