if not Session.get("stage")
  Session.set("stage", "gameCreating")

Template.game.helpers
  gameCreating: -> Session.equals("stage", "gameCreating")
  teamsJoining: -> Session.equals("stage", "teamsJoining")

Template.gameCreating.helpers
  rounds: -> Rounds.find()
  selected: -> !! _.indexOf Session.get("selectedRounds"), this

Template.teamsJoining.helpers
  joiningUrl: -> "#{location.host}"
