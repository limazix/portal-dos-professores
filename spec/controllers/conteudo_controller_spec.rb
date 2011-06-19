require 'spec_helper'

describe ConteudoController do

  before :each do
    @conteudo = ConteudoController.new
  end

  describe "Lista de conteudos" do
    it "deve existir" do
      @conteudo.view.should == []
    end
  end

  describe "Lista inicial de conteudos" do
    it "devem existir conteudos iniciais" do
      @conteudo.exemplos.size.should > 0
    end
  end

end
