def sign_in_and_play
  visit '/names'
    fill_in('player_one', with: 'Sam')
    fill_in('player_two', with: 'Courtenay')
    click_on('Submit')
end 