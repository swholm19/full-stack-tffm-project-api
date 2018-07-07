class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :league_name, :commissioner, :rules, :champion, :loser
end
