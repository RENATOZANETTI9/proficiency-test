require "rails_helper"

feature 'Criando Matrículas' do
  scenario "posso criar uma matrícula" do
    visit '/'

    click_link 'Nova Matrícula'

    fill_in 'Estudante', with: 'Renato'
    fill_in 'Curso', with: 'Portugues'
    fill_in 'Data/Hora', with: '2015-06-03 22:00:00'
    click_button 'Criar Matrícula'

    expect(page).to have_content('Matrícula foi criada.')
  end
end
