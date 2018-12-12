require 'rails_helper'

RSpec.describe 'Users API', type: :request do

    # Test suite for GET /users
    describe 'GET /users' do
      before { get '/users' }

      it 'returns users' do
        expect{(json).not_to be_empty}
        expect{(json.size).to eq(30)}
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    # Test suite for POST /users
    describe 'POST /users', :type => :request do
        it 'save user' do
            params = { user: 
                { name: "Lucas", email: "test@com", cpf: "00000000000" },
                orders: [
                    { imei: "teste", price: 1000.0, model: "Iphone", payment_installments: 10 }
                ] 
            }

            post "/users", params: params

            expect(response).to have_http_status(201)
        end

        it 'should return a error 422' do
            params = { user: 
                { name: "Lucas", email: "test@com" } 
            }

            post "/users", params: params

            expect(response).to have_http_status(422)
        end
    end
end
