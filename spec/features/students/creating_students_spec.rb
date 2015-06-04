require "rails_helper"

feature 'Criando Estudantes' do
  scenario "posso criar um estudante" do
    visit '/'

    click_link 'Novo Estudante'

    fill_in 'Nome', with: 'Estudante 1'
    fill_in 'Número do Registro', with: 'Número do estudante 1 (um)'
    click_button 'Criar estudante'

    expect(page).to have_content('Estudante foi criado.')
  end
end
