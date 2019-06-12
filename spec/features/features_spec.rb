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


