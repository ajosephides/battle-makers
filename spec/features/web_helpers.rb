def sign_in_and_play
  visit('/')
  fill_in('Player 1', with: 'AJ')
  fill_in('Player 2', with: 'Kir')
  click_button('Submit')
end