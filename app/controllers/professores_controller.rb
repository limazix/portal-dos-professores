class ProfessoresController < ApplicationController
	def view
		# Mock do BD
		profs = {
			'bruno' => {
				'nome' => 'Bruno Lima',
				'descricao' => 'Um cara namoral'
				},
			'pedro' => {
				'nome' => 'Pedro Alberto',
				'descricao' => 'Um cara do Pará'
				},
			'luiz' => {
				'nome' => 'Luiz Fernando J. Bacelar',
				'descricao' => 'Um cara Janela'
				},
			'guilherme' => {
				'nome' => 'Guilherme "O Foda" Fernandes',
				'descricao' => 'Um cara babaca'
				}
		}
		
		# Testa se professor existe no Banco de Dados
		if (profs.include? params[:nome])
			# Atribuir os dados do BD as variáveis da View
			@conteudo = profs[params[:nome]]
		else
			# Lançar 404
		end
			
	end
end
