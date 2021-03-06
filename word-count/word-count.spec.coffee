WordCount = require './word-count'

describe 'WordCount', ->
  it 'counts one word', ->
    words = new WordCount 'word'
    expect(words.count()).toEqual
      word: 1

  it 'counts one of each', ->
    words = new WordCount 'one of each'
    expect(words.count()).toEqual
      one: 1
      of: 1
      each: 1

  it 'counts multiple occurrences', ->
    words = new WordCount 'one fish two fish red fish blue fish'
    expect(words.count()).toEqual
      one: 1
      fish: 4
      two: 1
      red: 1
      blue: 1

  it 'ignores punctuation', ->
    words = new WordCount 'car : carpet as java : javascript!!&@$%^&'
    expect(words.count()).toEqual
      car: 1
      carpet: 1
      as: 1
      java: 1
      javascript: 1

  it 'includes numbers', ->
    words = new WordCount 'testing, 1, 2 testing'
    expect(words.count()).toEqual
      testing: 2
      1: 1
      2: 1

  it 'normalizes case', ->
    words = new WordCount 'go Go GO'
    expect(words.count()).toEqual
      go: 3
