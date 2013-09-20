Meteor.publish "rounds", ->
  @added("rounds", round.name, round) for round in Rounds
  @ready()
