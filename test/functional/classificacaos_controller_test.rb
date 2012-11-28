require 'test_helper'

class ClassificacaosControllerTest < ActionController::TestCase
  setup do
    @classificacao = classificacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classificacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classificacao" do
    assert_difference('Classificacao.count') do
      post :create, :classificacao => { :derrotas => @classificacao.derrotas, :empates => @classificacao.empates, :gols => @classificacao.gols, :golscontra => @classificacao.golscontra, :id_time => @classificacao.id_time, :jogos => @classificacao.jogos, :pontos => @classificacao.pontos, :saldogols => @classificacao.saldogols, :vitorias => @classificacao.vitorias }
    end

    assert_redirected_to classificacao_path(assigns(:classificacao))
  end

  test "should show classificacao" do
    get :show, :id => @classificacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @classificacao
    assert_response :success
  end

  test "should update classificacao" do
    put :update, :id => @classificacao, :classificacao => { :derrotas => @classificacao.derrotas, :empates => @classificacao.empates, :gols => @classificacao.gols, :golscontra => @classificacao.golscontra, :id_time => @classificacao.id_time, :jogos => @classificacao.jogos, :pontos => @classificacao.pontos, :saldogols => @classificacao.saldogols, :vitorias => @classificacao.vitorias }
    assert_redirected_to classificacao_path(assigns(:classificacao))
  end

  test "should destroy classificacao" do
    assert_difference('Classificacao.count', -1) do
      delete :destroy, :id => @classificacao
    end

    assert_redirected_to classificacaos_path
  end
end
