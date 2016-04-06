# Description:
#   make your bot decide where to eat lunch.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   storage_bot: Where should we eat - Make your bot decide where to eat lunch
#   storage_bot: places to eat - Give all the places to eat
#
# Author:
#   mlipchuk&derez co.

places = [
  "Glenda",
  "Aroma",
  "R cafe",
  "River",
  "Edisson",
  "Shwarma"
]

places_beside_glenda = [
  "Not Glenda",
  "Please not Glenda again",
  "Any of the places beside Glenda"
]

module.exports = (robot) ->
  robot.hear /storage_bot: Where(.*)eat/i, (res) ->
    if res.message.user.name is "laravot"
      res.emote "Lets go to eat at #{res.random places_beside_glenda}"
    else
      res.emote "Lets go to eat at #{res.random places}"

  robot.hear /storage_bot: Place(.*) to eat/i, (res) ->
    if res.message.user.name is "laravot"
      for place in places_beside_glenda
        res.emote "#{place}"
    else
      for place in places
        res.emote "#{place}"

