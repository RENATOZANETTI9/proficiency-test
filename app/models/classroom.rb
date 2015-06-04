class Classroom < ActiveRecord::Base
  #Relacionamentos
  belongs_to :student, :class_name => Student, :foreign_key => :student_id
  belongs_to :course, :class_name => Course, :foreign_key => :course_id
  validates :student, presence: true
  #Define valor padrão para a data da matrícula
  after_initialize :default_values
  private
  def default_values
      self.entry_at = Time.now
  end
  #Data/Hora somente leitura
  attr_readonly :entry_at
end
