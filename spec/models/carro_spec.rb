require 'spec_helper'

describe Carro do
  it "deveria ser novo" do
  c = Carro.new
  c.preco = 32000
  c.calcula_comissao.should be == 1600.0
 # it "deveria ter comissao de 5% do valor"
  end
end
