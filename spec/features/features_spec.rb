feature 'Fill in a form to get player names' do
  scenario 'Fill out a form with player names' do
    visit('/')
    fill_in('Player 1', with: 'AJ')
    fill_in('Player 2', with: 'Kir')

    click_button('Submit')

    expect(page).to have_content('AJ','Kir')
  end
end


