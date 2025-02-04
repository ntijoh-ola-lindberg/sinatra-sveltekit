require 'sinatra'
require 'json'
require 'sinatra/cross_origin'

class App < Sinatra::Base

    configure do
        enable :cross_origin
    end

    before do
        response.headers['Access-Control-Allow-Origin'] = '*'
    end

    get '/api/message' do
        p "  API call to /api/message"
        content_type :json
        { message: "Hello from Sinatra!" }.to_json
    end

end
