<h1>Squad Maker Challenge</h1>

<p>The challenge is to build an application that creates equally matched hockey squads from a collection of players.</p>

<h2>Overview</h2>

<p>A number of hockey players have signed up for hockey tournament (shinny). Each hockey player has been assigned a rating for three different skills:
<ul>
	<li>Skating</li>
		<li>Shooting</li>
		<li>Checking</li>
</ul>
</p>

<p>The tournament organizer has tasked you with creating the squads for the tournamet. You are free to do this however you like, with the following rules in mind:<p>
<ol>
	<li>each squad must have the same number of players</li>
	<li>each squad must be as closely balance as possible in each of the three skills</li>
	<li>the organizer doesn't know how many squads there will be yet</li>
	<li>any players that cannot be assigned to a squad will be placed on the waiting list</li>
</ol>

<p>
	The player data will be made availabe via a REST API from an external data provider. Unfortunately, the API is not yet availabe. For now, the provider has offered you sample player data in the players.json file. The format of the data in the file will match the format of the REST response when it is available.  
</p>

<p>
	You have decided to build a web application for this task. The organizer likes this approach and you discuss the following features: 
	<ul>
		<li>by default, the home page will show all player as being on the waiting list</li>
		<li>there is a control that allows the user to enter the number of desired squads</li>
		<li>there is a button that, when clicked, will generate the desired number of squads</li>
		<li>there is a button that, when clicked, will reset the application and put all of the players back on the waiting list</li>
		<li>for each squad that is created, display the following in a nicely formatted way:</li>
			<ul>
				<li>Player Details</li>
				<ul>
					<li>Full Player Name</li>
					<li>Skating Rating</li>
					<li>Shooting Rating</li>
					<li>Checking Rating</li>
				</ul>
				<li>Team Shooting Average</li>
				<li>Team Skating Average</li>
				<li>Team Checking Average</li>
			</ul>
		</ul>
	</p>
 





