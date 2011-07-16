class ConteudosController < ApplicationController
    def view
    end

    def create
        @prof = Professor.find(params[:professor_id])
        @conteudo = @prof.conteudos.create(params[:conteudo])
        redirect_to (root_path + (@prof.nome))
    end
    
    def delete
        @conteudo = Conteudo.find(params[:id])
        @conteudo.destroy
        redirect_to (root_path + (Professor.find(@conteudo.professor_id)).nome)
    end
end
