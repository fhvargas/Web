class Usuario < ActiveRecord::Base
  attr_accessible :email, :id_usuario, :nome_completo, :nome_usuario, :password
end
