# Description:
#   A bot that shows who is the qa contact person
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   storage_bot: qacontact/qecontact - The bot show who is the storage qa contact this week
#
# Author:
#   mlipchuk&derez co
#

fs = require 'fs'
config = '/home/mlipchuk/qacontact/qa_contact_name.log'

foo = ->
  fs.readFileSync config, 'utf8'

module.exports = (robot) ->
  robot.hear /storage_bot:(.*)qa(.*)contact|qe(.*)contact/i, (res) ->
     qa_name = fs.readFileSync config, 'utf8'
     res.emote "The storage QE contact this week is #{qa_name}"
