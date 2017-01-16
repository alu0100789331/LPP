require "spec_helper"

describe "Practica" do
  
  
  before(:all) do
    @receta_sin = Receta.new();
    @receta_con = Receta.new("Sandwich Mixto", 1, 2, ["2 rebanadas de pan","1 loncha de jamon","1 loncha de queso","mantequilla al gusto"],["Unte de mantequilla uno de los lados de la rebanada de pan","Coloque encima la loncha de queso","Coloque encima la loncha de jamon","Ponga la otra rebanada de pan encima"]);
  end

describe "Receta" do
  it "Se puede crear el objeto (sin parametros)" do
    expect(@receta_sin).not_to be nil
  end
  
  it "Se puede crear el objeto (con parametros)" do
    expect(@receta_con).not_to be nil
  end
  
  it "Se puede mostrar la receta" do
    expect(@receta_con.mostrar()).not_to be nil
  end
end
  
end
