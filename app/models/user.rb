class User < ApplicationRecord
    validates :name, presence: { message: "O campo nome deve ser preenchido." }
    validates :email, presence: { message: "O campo email deve ser preenchido." }, uniqueness: true
    validates :cpf, presence: { message: "O campo CPF deve ser preenchido." }, uniqueness: true

    has_many :orders, inverse_of: :user

    accepts_nested_attributes_for :orders, allow_destroy: true
end
