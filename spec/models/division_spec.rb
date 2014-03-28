require 'spec_helper'

describe Division do
  #MANDATORY FIELDS
  it {should validate_presence_of(:divname)}
  #UNIQUE FIELDS
  it {should validate_uniqueness_of(:divname)}
  #ASSOCIATIONS
  it {should belong_to(:competition)}
  it {should have_many(:teams)}
end
