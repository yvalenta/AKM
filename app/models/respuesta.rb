class Respuesta < ActiveRecord::Base
  attr_accessible :pregunta_id , :respuesta , :letra

  belongs_to :pregunta

  has_many :resultados

  validates :respuesta ,
            :presence => true ,
            :length => { :maximum => 254 }

  validates :letra ,
            :presence => true ,
            :length => { :maximum => 1 }
end
