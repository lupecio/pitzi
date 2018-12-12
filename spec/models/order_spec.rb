require 'rails_helper'

# Test suite for the Order model
RSpec.describe Order, type: :model do
  # Association test
  # ensure Order model has a 1:m relationship with the Item model
  it { should belong_to(:user) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:imei).with_message('O campo IMEI deve ser preenchido.') }
  it { should validate_presence_of(:model).with_message('O campo modelo deve ser preenchido.') }
  it { should validate_presence_of(:price).with_message('O campo preço deve ser preenchido.') }
end
