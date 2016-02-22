require 'spec_helper'

describe 'Namer'  do
  describe 'landing page' do
    subject { get '/' }

    before { allow(RestClient).to receive(:get).with(ENV['NAME_PROVIDER_URL']).and_return('world') }

    its(:status) { is_expected.to eq 200 }
    its(:body) { is_expected.to eq 'world' }
  end
end
