CREATE TABLE Player_Attributes_Modified as
with PA as (
	select 
   		json_extract(replace(Player_Attributes,'NaN',0),'$.id') as player_attribute_id
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.player_api_id') as player_api_id
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.date') as date
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.overall_rating') as overall_rating
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.potential') as potential
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.preferred_foot') as preferred_foot
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.attacking_work_rate') as attacking_work_rate
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.defensive_work_rate') as defensive_work_rate
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.crossing') as crossing
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.finishing') as finishing
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.heading_accuracy') as heading_accuracy
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.short_passing') as short_passing
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.volleys') as volleys
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.dribbling') as dribbling
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.curve') as curve
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.free_kick_accuracy') as free_kick_accuracy
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.long_passing') as long_passing
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.ball_control') as ball_control
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.acceleration') as acceleration
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.sprint_speed') as sprint_speed
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.agility') as agility
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.reactions') as reactions
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.balance') as balance
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.shot_power') as shot_power
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.jumping') as jumping
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.stamina') as stamina
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.strength') as strength
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.long_shots') as long_shots
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.aggression') as aggression
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.interceptions') as interceptions
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.positioning') as positioning
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.vision') as vision
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.penalties') as penalties
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.marking') as marking
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.standing_tackle') as standing_tackle
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.sliding_tackle') as sliding_tackle
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.gk_diving') as gk_diving
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.gk_handling') as gk_handling
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.gk_kicking') as gk_kicking
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.gk_positioning') as gk_positioning
        ,json_extract(replace(Player_Attributes,'NaN',0),'$.gk_reflexes') as gk_reflexes
  	from Player_Attributes
)
select
    Player.'Unnamed: 0' as player_id 
    Player.player_api_id 
    ,Player.player_attribute_id
    ,Player.player_name
    ,Player.player_fifa_api_id
    ,Player.birthday
    ,Player.height
    ,Player.weight
	,PA.id_attribute
    ,PA.date
    ,PA.overall_rating
    ,PA.potential
    ,PA.preferred_foot
    ,PA.attacking_work_rate
    ,PA.defensive_work_rate
    ,PA.crossing
    ,PA.finishing
    ,PA.heading_accuracy
    ,PA.short_passing
    ,PA.volleys
    ,PA.dribbling
    ,PA.curve
    ,PA.free_kick_accuracy
    ,PA.long_passing
    ,PA.ball_control
    ,PA.acceleration
    ,PA.sprint_speed
    ,PA.agility
    ,PA.reactions
    ,PA.balance
    ,PA.shot_power
    ,PA.jumping
    ,PA.stamina
    ,PA.strength
    ,PA.long_shots
    ,PA.aggression
    ,PA.interceptions
    ,PA.positioning
    ,PA.vision
    ,PA.penalties
    ,PA.marking
    ,PA.standing_tackle
    ,PA.sliding_tackle
    ,PA.gk_diving
    ,PA.gk_handling
    ,PA.gk_kicking
    ,PA.gk_positioning
from Player
	left join PA on (Player.player_api_id = PA.player_api_id);

CREATE TABLE Team_Attributes_Modified as
with TA as (
	select 
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.id') as team_attribute_id
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.team_api_id') as team_api_id
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.date') as date
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.buildUpPlaySpeed') as buildUpPlaySpeed
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.buildUpPlaySpeedClass') as buildUpPlaySpeedClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.buildUpPlayDribbling') as buildUpPlayDribbling
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.buildUpPlayDribblingClass') as buildUpPlayDribblingClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.buildUpPlayPassing') as buildUpPlayPassing
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.buildUpPlayPassingClass') as buildUpPlayPassingClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.buildUpPlayPositioningClass') as buildUpPlayPositioningClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.chanceCreationPassing') as chanceCreationPassing
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.chanceCreationPassingClass') as chanceCreationPassingClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.chanceCreationCrossing') as chanceCreationCrossing
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.chanceCreationCrossingClass') as chanceCreationCrossingClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.chanceCreationShooting') as chanceCreationShooting
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.chanceCreationShootingClass') as chanceCreationShootingClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.chanceCreationPositioningClass') as chanceCreationPositioningClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.defencePressure') as defencePressure
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.defencePressureClass') as defencePressureClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.defenceAggression') as defenceAggression
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.defenceAggressionClass') as defenceAggressionClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.defenceTeamWidth') as defenceTeamWidth
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.defenceTeamWidthClass') as defenceTeamWidthClass
        ,json_extract(replace(Team_Attributes,'NaN',0), '$.defenceDefenderLineClass') as defenceDefenderLineClass   	
  	from Team_Attributes
)
select
    Team.'Unnamed: 0' as team_id 
    ,Team.team_api_id
    ,Team.team_fifa_api_id
    ,Team.team_long_name
    ,Team.team_short_name
    ,TA.team_attribute_id
    ,TA.date
    ,TA.buildUpPlaySpeed
    ,TA.buildUpPlaySpeedClass
    ,TA.buildUpPlayDribbling
    ,TA.buildUpPlayDribblingClass
    ,TA.buildUpPlayPassing
    ,TA.buildUpPlayPassingClass
    ,TA.buildUpPlayPositioningClass
    ,TA.chanceCreationPassing
    ,TA.chanceCreationPassingClass
    ,TA.chanceCreationCrossing
    ,TA.chanceCreationCrossingClass
    ,TA.chanceCreationShooting
    ,TA.chanceCreationShootingClass
    ,TA.chanceCreationPositioningClass
    ,TA.defencePressure
    ,TA.defencePressureClass
    ,TA.defenceAggression
    ,TA.defenceAggressionClass
    ,TA.defenceTeamWidth
    ,TA.defenceTeamWidthClass
    ,TA.defenceDefenderLineClass
from Team
	left join TA on (Team.team_api_id = TA.team_api_id);

CREATE TABLE Match_Modified as 
select    
    json_object(
        'id', id
        ,'match_api_id' , match_api_id
        ,'home_team_api_id', home_team_api_id
        ,'away_team_api_id', away_team_api_id
        ) as Match_Modified
from Match