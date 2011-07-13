class Professor < ActiveRecord::Base

    # Não permite criar um professor sem um nome!
    validates :nome,    :presence => true

end
