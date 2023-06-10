FactoryBot.define do
  factory :user do
    name { 'Alice' }
    email { 'alice@example.jp' }
    password { 'PasswordOfAlice' }
    password_confirmation { 'PasswordOfAlice' }
  end

  factory :example_user, class: 'User' do
    name { 'example' }
    email { 'example@example.jp' }
    password { 'password' }
    password_confirmation { 'password' }
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
