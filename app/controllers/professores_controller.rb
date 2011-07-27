require 'net/pop'

class ProfessoresController < ApplicationController
	
	def view
        
        @prof = Professor.find_by_nome(params[:nome])

        if( @prof.nil? )
           @prof = Professor.create!(:nome => params[:nome], :nome_real => params[:nome])
        end

		username = 'portaldosprofessoresufrj@gmail.com'
		password = 'portaldosprofessores'

		Net::POP3.enable_ssl(OpenSSL::SSL::VERIFY_NONE)
		Net::POP3.start('pop.gmail.com', 995, username, password) do |pop|
		if pop.mails.empty?
		  puts 'No mail.'
		else
		  pop.each_mail do |mail|
		  	#p mail.subject
			@header = mail.header
			#p mail.pop
		  end
		end
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
	
	def update_nome_real
		@prof = Professor.find(params[:id])
		@prof.nome_real = params[:professor]["nome_real"]
		@prof.save
		
		redirect_to (root_path + (@prof.nome))
	end
	
end
