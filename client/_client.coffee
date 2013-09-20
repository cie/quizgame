@game = null
@team = null

Meteor.subscribe("rounds")
@Rounds = new Meteor.Collection("rounds")
