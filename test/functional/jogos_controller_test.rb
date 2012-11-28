require 'test_helper'

class JogosControllerTest < ActionController::TestCase
  setup do
    @jogo = jogos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jogos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jogo" do
    assert_difference('Jogo.count') do
      post :create, :jogo => { :gols_mandante => @jogo.gols_mandante, :gols_visitante => @jogo.gols_visitante, :id_jogo => @jogo.id_jogo, :time_mandante => @jogo.time_mandante, :time_visitante => @jogo.time_visitante }
    end

    assert_redirected_to jogo_path(assigns(:jogo))
  end

  test "should show jogo" do
    get :show, :id => @jogo
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @jogo
    assert_response :success
  end

  test "should update jogo" do
    put :update, :id => @jogo, :jogo => { :gols_mandante => @jogo.gols_mandante, :gols_visitante => @jogo.gols_visitante, :id_jogo => @jogo.id_jogo, :time_mandante => @jogo.time_mandante, :time_visitante => @jogo.time_visitante }
    assert_redirected_to jogo_path(assigns(:jogo))
  end

  test "should destroy jogo" do
    assert_difference('Jogo.count', -1) do
      delete :destroy, :id => @jogo
    end

    assert_redirected_to jogos_path
  end
end
