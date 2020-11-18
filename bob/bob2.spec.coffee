Bob = require './bob'

describe 'Bob2', ->
  bob2 = new Bob()

  # Based on the C++ test case
  #  ("Bob exercise test case data version 1.4.0").

  it '[stating_something]', ->
    result = bob2.hey "Tom-ay-to, tom-aaaah-to."
    expect(result).toEqual "Whatever."

  it '[shouting]', ->
    result = bob2.hey "WATCH OUT!"
    expect(result).toEqual "Whoa, chill out!"

  it '[shouting_gibberish]', ->
    result = bob2.hey "FCECDFCAAB"
    expect(result).toEqual "Whoa, chill out!"

  it '[asking_a_question]', ->
    result = bob2.hey "Does this cryogenic chamber make me look fat?"
    expect(result).toEqual "Sure."

  it '[asking_a_numeric_question]', ->
    result = bob2.hey "You are, what, like 15?"
    expect(result).toEqual "Sure."

  it '[asking_gibberish]', ->
    result = bob2.hey "fffbbcbeab?"
    expect(result).toEqual "Sure."

  it '[talking_forcefully]', ->
    result = bob2.hey "Let's go make out behind the gym!"
    expect(result).toEqual "Whatever."

  it '[using_acronyms_in_regular_speech]', ->
    result = bob2.hey "It's OK if you don't want to go to the DMV."
    expect(result).toEqual "Whatever."

  it '[forceful_questions]', ->
    result = bob2.hey "WHAT THE HELL WERE YOU THINKING?"
    expect(result).toEqual "Calm down, I know what I'm doing!"

  it '[shouting_numbers]', ->
    result = bob2.hey "1, 2, 3 GO!"
    expect(result).toEqual "Whoa, chill out!"

  it '[no_letters]', ->
    result = bob2.hey "1, 2, 3"
    expect(result).toEqual "Whatever."

  it '[question_with_no_letters]', ->
    result = bob2.hey "4?"
    expect(result).toEqual "Sure."

  it '[shouting_with_special_characters]', ->
    result = bob2.hey "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!"
    expect(result).toEqual "Whoa, chill out!"

  it '[shouting_with_no_exclamation_mark]', ->
    result = bob2.hey "I HATE THE DMV"
    expect(result).toEqual "Whoa, chill out!"

  it '[statement_containing_question_mark]', ->
    result = bob2.hey "Ending with ? means a question."
    expect(result).toEqual "Whatever."

  it '[non_letters_with_question]', ->
    result = bob2.hey ":) ?"
    expect(result).toEqual "Sure."

  it '[prattling_on]', ->
    result = bob2.hey "Wait! Hang on. Are you going to be OK?"
    expect(result).toEqual "Sure."

  it '[silence]', ->
    result = bob2.hey ""
    expect(result).toEqual "Fine. Be that way!"

  it '[prolonged_silence]', ->
    result = bob2.hey "          "
    expect(result).toEqual "Fine. Be that way!"

  it '[alternate_silence]', ->
    result = bob2.hey "\t\t\t\t\t\t\t\t\t\t"
    expect(result).toEqual "Fine. Be that way!"

  it '[multiple_line_question]', ->
    result = bob2.hey "\nDoes this cryogenic chamber make me look fat?\nNo."
    expect(result).toEqual "Whatever."

  it '[starting_with_whitespace]', ->
    result = bob2.hey "         hmmmmmmm..."
    expect(result).toEqual "Whatever."

  it '[ending_with_whitespace]', ->
    result = bob2.hey "Okay if like my  spacebar  quite a bit?   "
    expect(result).toEqual "Sure."

  it '[other_whitespace]', ->
    result = bob2.hey "\n\r \t"
    expect(result).toEqual "Fine. Be that way!"

  it '[non_question_ending_with_whitespace]', ->
    result = bob2.hey "This is a statement ending with whitespace      "
    expect(result).toEqual "Whatever."
