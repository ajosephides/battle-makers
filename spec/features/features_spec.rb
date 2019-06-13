feature 'Fill in a form to get player names' do
  scenario 'Fill out a form with player names' do
    sign_in_and_play
    expect(page).to have_content('AJ','Kir')
  end
end

feature 'As player 1 I want to see player2 hits' do
  scenario 'show player2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Kir Hit Points: 100')
  end
end

feature 'As player 1 I want to attack Player 2 and get confirmation' do
  scenario 'press button on play to hit player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('BAM!')
  end
end

feature 'As player 1 when I attack I want to decrease Player 2 HP by 10' do
  scenario 'Attack button reduces hp by 10' do 
    sign_in_and_play
    click_button('Attack!')
    expect(page).not_to have_content('Kir Hit Points: 100')
    expect(page).to have_content('Kir Hit Points: 90')
  end
end

feature 'players can switch turns' do
  scenario 'game starts and it is player 1s turn' do
    sign_in_and_play
    expect(page).not_to have_content("Kir's turn")
    expect(page).to have_content("AJ's turn")
  end

  scenario 'player 1 attacks and now it is player 2 turn' do
    sign_in_and_play
    click_button('Attack')
    expect(page).not_to have_content("AJ's turn")
    expect(page).to have_content("Kir's turn")
  end
end


