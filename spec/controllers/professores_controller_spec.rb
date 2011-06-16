require 'spec_helper'

describe ProfessoresController do

	before :each do
    @profs = ProfessoresController.new
  end	
	
	describe "Lista de professores" do
		it "deve existir" do
				@profs.view.should == []
		end
	end	
end
