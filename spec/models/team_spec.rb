require 'spec_helper'

describe Team do
	#MANDATORY FIELDS
	it {should validate_presence_of(:teamname)}
	it {should validate_presence_of(:teammgr)}
	#UNIQUE FIELDS
	it {should validate_uniqueness_of(:teamname)}
	#ASSOCIATIONS
	it {should belong_to(:division)}
	it {should belong_to(:competition)}
	it {should have_many(:players)}
end
