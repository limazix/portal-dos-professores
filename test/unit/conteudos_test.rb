require 'test_helper'

class ConteudosTest < ActiveSupport::TestCase

    # Primeiro Teste, objetivo é só ver se a classe existe
    test "classe deveria existir" do
        cont = Conteudo.new
        assert cont, "Classe Conteudo não existe"
    end

    # Segundo Teste: Um conteúdo não pode ser vazio
    test "conteúdo não pode ser vazio" do
        cont = Conteudo.new
        assert !cont.save, "Deixou inserir sem conteúdo"
    end

end
