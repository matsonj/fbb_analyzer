This project is designed to take raw nba game data and turn into a predictive model that can accomplish the following:
 - predict which teams are strongest in aggregate
 - predict which players to play in a specific matchup
 - analyze which 1 for 1 trades are likely to be accepted and improve a specific team
   - analyze which players are bad fit for specific teams based on team composition
 - analyze which free agents are the best fit for each team

### Current status
Currently, 2013 to 2018 data has been ingested and basic analysis completed. This is leveraging FOSS (dbeaver, vscode, and dbt-core) to accomplish the automation & prediction. 

### to-do
 - [ ] manually load 2019, 2020, 2021 data
 - [ ] load historical transaction data (team history?)
 - [ ] create method to predict standings
 - [ ] create method to calculate current standings
 - [ ] create method to analyze fit of specific players based on team comp
 - [ ] create method to analyze specific matchups and which players to play
  - [ ] create a report on which players increase or decrease odds
 - [ ] Explore meltano for data extraction & loading

 ### ENVIRONMENT SETUP
 I've set this up with postgresql on WSL2 (ubuntu). 

 Some tricks I've discovered:
  - basic postgres account seems to be kind of naughty to use. I created my own user account & and assigned superuser.
   - ALTER USER username WITH SUPERUSER;
  - using dbeaver.io for the sql runner.
  - in your dbt profile, setting your host to localhost is slow. on a small version of this project - 15x slower using the friendly name.
   - the fix is to use your localhost ip as a hardcode - i.e 127.0.0.1
  - this psql server is only accessible from your local machine. 
   - will need to do some/all of the following to other machines in the network to hit your WSL2 instance
    - modify postgresql.conf to allow '*' (remove leading # too)
    - modify pg_hba.conf to allow your IP range (or all IPs - but be careful here) 
     - need to sudo gedit or similar to those files - can't modify with normal permissions
    - modify linux firewall to allow port 5432
    - open port 5432 on your windows machine in the windows firewall rules
    - make sure your client pc is on the same subnet as your server (if you have multiple routers this can be semi-complex)