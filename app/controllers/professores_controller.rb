class ProfessoresController < ApplicationController
	def view
        
        @prof = Professor.find_by_nome(params[:nome])

        if( @prof.nil? )
           @prof = Professor.new(:nome => params[:nome])
            @conteudo = "Página ainda não criada."
        else
            @conteudo = "Aqui será inserido o conteúdo associado a cada professor."
        end

        respond_to do |format|
            format.html
        end

		# Testa se professor existe no Banco de Dados
#		if (profs.include? params[:nome])
#			# Atribuir os dados do BD as variáveis da View
#			@conteudo = profs[params[:nome]]
#		else
#			# Lançar 404
#		end
			
	end
end
