Helper = require('hubot-test-coffee')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../scripts/qa_contact.coffee')

describe 'qa contact script', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'ovirt_bot: who the f*** is the qacontact?!', ->
    @room.user.say('mlipchuk', 'ovirt_bot: who the f*** is the qacontact?!').then =>
      expect(@room.messages).to.eql [
        ['mlipchuk', 'ovirt_bot: who the f*** is the qacontact?!']
        ['storage_bot', 'The storage QE contact this week is (.*)']
      ]
