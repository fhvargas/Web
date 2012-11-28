# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121122233655) do

  create_table "classificacaos", :force => true do |t|
    t.integer  "id_time"
    t.integer  "pontos"
    t.integer  "jogos"
    t.integer  "vitorias"
    t.integer  "empates"
    t.integer  "derrotas"
    t.integer  "gols"
    t.integer  "golscontra"
    t.integer  "saldogols"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clubes", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "estadio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jogos", :force => true do |t|
    t.integer  "id_jogo"
    t.string   "time_mandante"
    t.string   "time_visitante"
    t.string   "gols_mandante"
    t.string   "gols_visitante"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "palpites", :force => true do |t|
    t.integer  "id_palpite"
    t.integer  "id_jogo"
    t.integer  "id_usuario"
    t.integer  "gol_mandante"
    t.integer  "gol_visitante"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.integer  "id_usuario"
    t.string   "nome_usuario"
    t.string   "password"
    t.string   "email"
    t.string   "nome_completo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
