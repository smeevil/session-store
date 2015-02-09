@SessionStore = _.extend {}, Session,
  keys: _.object _.map(amplify.store(), (value, key) -> [key,JSON.stringify(value)] )

  set: (key, value) ->
    Session.set.apply @, arguments
    amplify.store key, value
    return null

  unset: (key) ->
    value=SessionStore.get(key)
    delete SessionStore.keys[key]
    delete Session.keys[key]
    amplify.store key, null
    return value

  clear: ->
    for key, val of SessionStore.keys
      @unset key
    return null

  inspect: ->
    JSON.stringify(amplify.store())
