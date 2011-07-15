class Professor < ActiveRecord::Base

    # Não permite criar um professor sem um nome!
    validates :nome,    :presence => true

    # Um professor possui vários (0 a n) conteúdos
    has_many :conteudos
end
