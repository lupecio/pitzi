require 'rails_helper'

# Test suite for the User model
RSpec.describe User, type: :model do
  # Association test
  # ensure User model has a 1:m relationship with the Item model
  it { should have_many(:orders) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name).with_message('O campo nome deve ser preenchido.') }
  it { should validate_presence_of(:email).with_message('O campo email deve ser preenchido.') }
  it { should validate_presence_of(:cpf).with_message('O campo CPF deve ser preenchido.') }
end
