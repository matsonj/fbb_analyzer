This project is designed to take raw nba game data and turn into a predictive model that can accomplish the following:
 - predict which teams are strongest in aggregate
 - predict which players to play in a specific matchup
 - analyze which 1 for 1 trades are likely to be accepted and improve a specific team
   - analyze which players are bad fit for specific teams based on team composition
 - analyze which free agents are the best fit for each team

### Current status
Currently, 2013 to 2018 data has been ingested and basic analysis completed. This is leveraging FOSS (dbeaver, vscode, and dbt-core) to accomplish the automation & prediction. 

### to-do
[ ] manually load 2019, 2020, 2021 data
[ ] load historical transaction data (team history?)
[ ] create method to predict standings
[ ] create method to calculate current standings
[ ] create method to analyze fit of specific players based on team comp
[ ] create method to analyze specific matchups and which players to play
 - create a report on which players increase or decrease odds
[ ] Explore meltano for data extraction & loading