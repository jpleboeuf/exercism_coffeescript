class Bob
  
  MsgKind =
    mk0: ''
    mkA: 'mkA'
    mkY: 'mkY'
    mkN: 'mkN'
  
  containsAlphaChar = (s) ->
    for c in s
      if (c >= "A" and c<= "Z") or (c >= "a" and c <= "z")
        return true
    false
  
  isUpperCase = (s) ->
    s.toUpperCase() == s
  
  identifyMsgKinds = (msg) ->
    msgKinds = MsgKind.mk0
    msgTrimmed = msg.trim()
    if msgTrimmed == ""
      #msgKinds += MsgKind.mkN
      msgKinds = MsgKind.mkN
    else
      if msgTrimmed.endsWith("?")
        #msgKinds += MsgKind.mkA
        msgKinds = MsgKind.mkA
      if containsAlphaChar(msgTrimmed) and isUpperCase(msgTrimmed)
        #msgKinds += MsgKind.mkY
        msgKinds = MsgKind.mkY
    msgKinds
  
  hey: (msg) ->
    replyTo =
      'asking_question': "Sure."
      'yelling': "Whoa, chill out!"
      #'yelling_question': "Calm down, I know what I'm doing!"
      'saying_nothing': "Fine. Be that way!"
      'default': "Whatever."
    switch identifyMsgKinds(msg)
      when MsgKind.mkA then replyTo['asking_question']
      when MsgKind.mkY then replyTo['yelling']
      #when MsgKind.mkA + MsgKind.mkY then replyTo['yelling_question']
      when MsgKind.mkN then replyTo['saying_nothing']
      else replyTo['default']

module.exports = Bob
