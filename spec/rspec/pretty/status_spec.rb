# frozen_string_literal: true

RSpec.describe Rspec::Pretty::Status do
  it 'has a version number' do
    expect(Rspec::Pretty::Status::VERSION).not_to be nil
  end

  describe 'have_http_status matcher' do
    include described_class

    Rspec::Pretty::Status::STATUSES.each do |status, _|
      context "when matches #{status} status" do
        let(:response) { OpenStruct.new(status: Rspec::Pretty::Status::STATUSES[status]) }

        it { expect(have_http_status(status).matches?(response)).to eq true }
      end

      context "when not matches #{status} status" do
        let(:response) do
          statuses = Rspec::Pretty::Status::STATUSES.keys - [status]
          OpenStruct.new(status: statuses.sample)
        end

        it { expect(have_http_status(status).matches?(response)).to eq false }
      end
    end

    context 'when status is not one of predefined' do
      let(:response) { OpenStruct.new(status: :ok) }

      it { expect { have_http_status(:lorem_ipsum).matches?(response) }.to raise_error ArgumentError }
    end
  end
end
