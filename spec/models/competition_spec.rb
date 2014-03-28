require 'spec_helper'

describe Competition do
	#MANDATORY FIELDS
	it {should validate_presence_of(:name)}
	it {should validate_presence_of(:pointsflag)}
	it {should validate_presence_of(:setsflag)}
	it {should validate_presence_of(:mvpflag)}
	#UNIQUE FIELDS
	it {should validate_uniqueness_of(:name)}
	#ASSOCIATIONS
	it {should have_many(:divisions)}
	it {should have_many(:teams).through(:divisions)}
	it {should have_many(:players).through(:teams)}
end
