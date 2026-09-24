/*Which bowler took the most wickets in the 2018 season?*/
SELECT Player, Wkts FROM `iplanalysis-508512.IPL_db.Bowlers2018` order by Wkts desc LIMIT 1;

/*Which batsmen scored the most runs in the 2018 season while maintaining an average strike rate of at least 130?*/
select Player, Runs, SR from `IPL_db.Batsman2018` where SR >= 130 order by Runs desc limit 1;

/*Which bowlers took the most wickets in the 2018 season while maintaining an economy rate of less than 7 runs per over?*/
select Player, Wkts, ER from `IPL_db.Bowlers2018` where ER < 7 order by Wkts desc limit 1;

/*Which batsmen scored the most runs across both 2018 and 2019 seasons?*/
select bat2018.Player, (bat2018.Runs + bat2019.Runs) as TotalRuns from `IPL_db.Batsman2018` as bat2018 inner join `IPL_db.Batsmen2019` as bat2019 on bat2018.Player = bat2019.Player order by TotalRuns desc limit 2;

/*Which batsmen has hit the maximum number of boundaries in 2018, combining 4s and 6s?*/
select Player, (Fours + Sixs) as TotalBoundaries from `IPL_db.Batsman2018` order by TotalBoundaries desc
limit 1;

/*Name the bowlers who have got 4 wickets haul in 2019.*/
select Player, FourWs from `IPL_db.Bowlers2019` where FourWs > 0 limit 1000;

/*Name 5 such bowlers who bowled the least number of overs in 2018.*/
select Player, Overs from `IPL_db.Bowlers2018` order by Overs limit 5;

/*Which team scored the maximum number of runs in 2019?*/
select Team, sum(Runs) as TotalTeamRuns from `IPL_db.Batsmen2019` group by Team order by TotalTeamRuns desc limit 1;

/*Name the Batsmen who has hit maximum half centuries, both the years combined*/
select bat2018.Player, (bat2018.Fiftys + bat2019.Fiftys) as TotalFiftys from `IPL_db.Batsman2018` as bat2018 inner join `IPL_db.Batsmen2019` as bat2019 on 
bat2018.Player = bat2019.Player order by TotalFiftys desc limit 3;











