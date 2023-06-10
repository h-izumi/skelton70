require 'rails_helper'

RSpec.describe User do
  it 'can be saved.' do
    user = described_class.new(
      name: 'Alice', email: 'alice@example.jp',
      password: 'password', password_confirmation: 'password'
    )

    expect { user.save! }.to change(described_class, :count).from(0).to(1)
    expect(user).to be_persisted
  end
end

# == Schema Information
#
# Table name: users
#
#  id                  :bigint           not null, primary key
#  current_sign_in_at  :datetime
#  current_sign_in_ip  :string(255)
#  email               :string(255)      default(""), not null
#  encrypted_password  :string(255)      default(""), not null
#  failed_attempts     :integer          default(0), not null
#  last_sign_in_at     :datetime
#  last_sign_in_ip     :string(255)
#  locked_at           :datetime
#  name                :string(255)
#  remember_created_at :datetime
#  sign_in_count       :integer          default(0), not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
