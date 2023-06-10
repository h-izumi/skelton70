# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserDecorator do
  let(:user) { User.new.extend described_class }

  subject { user }

  it { is_expected.to be_a User }
end
