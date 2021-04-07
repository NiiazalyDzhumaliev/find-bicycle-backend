require 'rails_helper'

RSpec.describe Bicycle, type: :model do
  it { should have_many(:favourites) }
  it { should validate_presence_of(:model) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:url) }
end
