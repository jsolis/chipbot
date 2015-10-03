# Description:
#  Control your particle core/photon
#
# Commands:
#  hubot command - TODO

module.exports = (robot) ->

  robot.router.post '/chipbot/git/:room', (req, res) ->

    room = req.params.room

    data = if req.body.payload? then JSON.parse req.body.payload else req.body
    action = data.action

    robot.messageRoom room, "Action detected: #{action}"

    res.send "OK"
