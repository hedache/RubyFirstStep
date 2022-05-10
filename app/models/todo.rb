# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Todo < ApplicationRecord

    #Aqui va la definición de validaciones
    # validates :title, uniqueness: true
    validates :title, presence: true #blank
end
