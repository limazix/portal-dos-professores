require 'test_helper'

class ProfessoresControllerTest < ActionController::TestCase

# Primeiro Teste do Controle => para qualquer parâmetro depois da '/'
# não posso falhar na requisição (desde que o controller exista!!!)
    test "deve conseguir achar uma página" do
        get :view, :nome => "professor"
        assert_response :success, "Não existe controller ou não achei a página desejada"
    end

# Segundo Teste do Controle => o professor requisitado é o professor
# encontrado pelo controller
    test "professor encontrado deve ter mesmo nome" do
        get :view, :nome => "professor"
        assert_equal( "professor", assigns(:prof).nome, 
        "Nome diferente do esperado.")
    end

end
