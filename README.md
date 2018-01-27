<h1>Squad Maker Challenge</h1>

The challenge is to create an application that separates team members.

<h2>Overview</h2>

Each team member has the same set of six skills and a randomly generated rating (up to 100) assigned for that particular skill. 

Each skill is classified as being either a technical skill (T), a functional skill (F), or a general skill (G).

The skills are:
<ul>
	<li>Technical:</li>
	<ul>
		<li>Programming</li>
		<li>Application Design</li>
	</ul>
	<li>Functional:</li>
		<ul>
			<li>Domain Expertise</li>
			<li>UX</li>
	</ul>
	<li>General:<li>
	<ul>
		<li>Communication</li>
		<li>Time Management</li>
	</ul>
</ul>

The teamMembers.json file has sample data for the first 40 team members to be separated into squads.

The rules are:
<ul>
	<li>each squad must be of equal size</li>
<li>each squad must be as closely balance as possible with respect to technical, functional and general skills</li>
	<li>the default number of squads is 5</li>
	<li>any remaining team members not assigned to a squad will be placed on the "bench"</li>
</ul>

Build a web application that consumes data from an API endpoint that supplies the team member details (use the teamMember.json file as mock data). 

The web app will intially divide the team members into squads per the rules above. Each squad wll display the team members and the technical, functional and general skill rating for the squad.

The web app will have a form that allows new team members to be added. The form will accept a first name, last name and a skill rating up to and including 100 for each of the six skills. As team members are added, the squads will be rebalanced. Any team member not placed in a squad can go on the "bench". Display the bench in the same manner as the squads. 

The web app will also allow the number of squads to be adjusted from 5 to any desired number. When this is changed, the squads are automatically rebalanced. 





