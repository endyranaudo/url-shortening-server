require 'rails_helper'

RSpec.describe Url, type: :model do
  it 'is valid if it has original url' do
    url = Url.new(
      original: "https://bionic.co.uk/about-bionic/"
    )
    expect(url.valid?).to be(true)
  end

  it 'is invalid if it does not have an original url' do
    url = Url.new(
      original: nil
    )
    expect(url.valid?).to be(false)
  end
end
