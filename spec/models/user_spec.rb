require 'rails_helper'

RSpec.describe User do
  it 'can be saved.' do
    user = described_class.new(name: 'Alice', email: 'alice@example.jp')

    expect { user.save! }.to change(described_class, :count).from(0).to(1)
    expect(user).to be_persisted
  end
end
