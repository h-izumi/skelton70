class User < ApplicationRecord
  devise :database_authenticatable,
         :lockable, :trackable, :rememberable,
         :validatable

  validates :name, presence: true
end

# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  current_sign_in_at  :datetime
#  current_sign_in_ip  :string
#  email               :string           default(""), not null
#  encrypted_password  :string           default(""), not null
#  failed_attempts     :integer          default(0), not null
#  last_sign_in_at     :datetime
#  last_sign_in_ip     :string
#  locked_at           :datetime
#  name                :string
#  remember_created_at :datetime
#  sign_in_count       :integer          default(0), not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
