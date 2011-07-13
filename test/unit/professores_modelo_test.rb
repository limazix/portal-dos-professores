require 'test_helper'

class ProfessoresModeloTest < ActiveSupport::TestCase

    # Primeiro Teste feito. Simplesmente verifica se
    # "Professor" é uma classe existente
    test "classe deveria existir" do
        prof = Professor.new
        assert prof, "Classe não existente"
    end

    # Segundo Teste feito. Verifica se é possível criar uma
    # instância de "Professor" sem um nome associado
    test "não deveria ser possível inserir sem nome" do
        prof = Professor.new
        assert !prof.save, "Deixou inserir sem nome"
    end

end
