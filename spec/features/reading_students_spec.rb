 require "rails_helper"

  feature "Listando Estudantes" do
    it "consigo acessar o link da página" do
      visit root_path
      expect(page).to have_link('Estudantes')
    end
  end
