require 'spec_helper'

describe Player do
  #MANDATORY FIELDS
  it {should validate_presence_of(:firstname)}
  it {should validate_presence_of(:lastname)}
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:email)}
  #UNIQUE VALUES
  it {should validate_uniqueness_of(:username)}
  it {should validate_uniqueness_of(:email)}
  #SECURE PASSWORD
  it {should have_secure_password}
end
