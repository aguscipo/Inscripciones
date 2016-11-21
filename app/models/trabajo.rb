class Trabajo < ActiveRecord::Base
  belongs_to :revisor
  validates :resumen,  presence: true, length: { maximum: 200 }
  validates :titulo,  presence: true, length: { maximum: 80 }
  validates :autor,  presence: true, length: { maximum: 80 }
  validates :autores_secundarios, length: { maximum: 200 }
  VALID_EMAIL_REGEX = /\A(\W|^)[\w.+\-]*@gmail\.com(\W|$)/
  validates :correo_gmail, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }

end
