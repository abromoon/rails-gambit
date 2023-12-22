require 'rails_helper'

RSpec.describe ApplicationRecord, type: :model do
  subject{ described_class }

  it { is_expected.to be }
  it { is_expected.to be_kind_of(Class) }
end

