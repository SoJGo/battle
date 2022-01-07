
def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Jason')
  fill_in('player2', with: 'Sophie')
  click_button('Commence')
end