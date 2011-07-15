class Conteudo < ActiveRecord::Base
    validates :texto,   :presence => true
    belongs_to :professor
end
