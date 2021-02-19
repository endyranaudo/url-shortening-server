require 'rails_helper'

RSpec.describe "Urls", type: :request do
  subject { response }

  describe "GET urls#index" do
    it "should get index" do
      get '/urls'
      expect(subject).to have_http_status(200)
    end
  end

  describe '#show' do
    let(:url) { Url.create!({original: 'http://bionic.co.uk', shortened: '123456'})}
    
    it 'redirects to the original URL' do
      get "/#{url.shortened}"
      expect(subject).to redirect_to(url.original)
    end
  end
end
