# RestPR

RestPR is a RESTful web api that enables competitive communities to create player leaderboard seasons using tournament match data from services like Challonge.com

Players are ranked and sorted into a season leaderboard by their rating score (ELO, Glicko, TrueSkill, etc).

After creation the season official can authorize specific users as tournament officials.
Season cycle format can be specified upon creation along with a start date and end date pair.
Users can request for approval to become tournament officials.

These authorized users can then submit tournament brackets to populate rating data for the season.
Batch addition of tournaments (for pools) is supported.
Users can submit indvidiual matches for approval to play for ELO. Authorized users can approve these matches.

The match history for these games are then stored locally in a DB.

Players can be given an initial seed from a previous season,  by an authorized official or by a default value.

Users can view match data with different types of sorting and inspect indivisual players.
Player match data can also be filtered to show victories/losses and upsets.
Users can get a list of matches played between two players.

Users can see the top N players in the season or all the players in the season.

The season official can also create divisions within the leaderboard by score.
These divisions can be used by tournament officials to incentivise competition.
Additionally divisions within a leaderboard can be used to produce round robin side events or general seeding.

At the end of the season it can be marked as finished and a subjective power rankings can be submitted.
Users can see how many days left 

Panelists involved in the subjective power rankings can utilize the upset filtering to support their decisions.

#Resources

- User

#Response Codes

- 200 Ok
- 400 Invalid Challonge Reference, could not validate.
- 401 User isn't authorized to submit tournament.
- 404 Resource does not exist.
- 409 Duplicate tournament submission.
- 500 Internal Error.

See RestPRApi.yaml for Swagger specification.

#Configure
Define a database connection in configuration.yaml using the database: key.

You'll need to use ojdbc6_g.jar from Oracle in your /bin folder.

#Build
Run the build gradle task:
	$ gradle build

#Run
To run the application you must execute this command:
	$ java -classpath bin/ojdbc6_g.jar:build/libs/RESTPR-all.jar edu.oregonstate.mist.restpr.RESTPRApplication server configuration.yaml

or just run manualjavacall.sh:
	$ ./manualjavacall.sh
