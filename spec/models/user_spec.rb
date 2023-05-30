require 'rails_helper'

RSpec.describe User do
  it 'can be saved.' do
    user = described_class.new(name: 'Alice', email: 'alice@example.jp')

    expect { user.save! }.to change(described_class, :count).from(0).to(1)
    expect(user).to be_persisted
  end
end

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
