WITH flare AS (SELECT batter, COUNT(distinct id) AS flares_burners
FROM public."2021_Events"
WHERE launch_speed_angle = 4
GROUP BY batter)
,
solid AS (SELECT batter, COUNT(distinct id) as solid
FROM public."2021_Events"
WHERE launch_speed_angle = 5
GROUP BY batter)
,
barrels AS (SELECT batter, COUNT(distinct id) AS barrels
FROM public."2021_Events"
WHERE launch_speed_angle = 6
GROUP BY batter)

SELECT f.batter, CONCAT(ba.first_name, ' ', ba.last_name) AS name, b_total_pa AS pa, xba, xslg, woba, xwoba, xobp, xiso, exit_velocity_avg, barrel_batted_rate, f.flares_burners, s.solid, b.barrels, ROUND((b_bb_percent/100), 3) AS b_bb_percent, ROUND(f.flares_burners::numeric/b_total_pa::numeric, 2) AS flare_burner_pa, ROUND(s.solid::numeric/b_total_pa::numeric, 2) AS solid_pa, ROUND(barrels::numeric/b_total_pa::numeric, 2) AS barrel_pa,
ROUND(((f.flares_burners::numeric/b_total_pa::numeric)*0.24) + ((s.solid::numeric/b_total_pa::numeric)*0.25) + ((barrels::numeric/b_total_pa::numeric)*0.89) + ((b_bb_percent/100)*0.29), 3) AS ipa
FROM flare f 
INNER JOIN solid s ON f.batter = s.batter
INNER JOIN barrels b ON f.batter = b.batter
INNER JOIN batters_pa_250 ba ON f.batter = ba.player_id
GROUP BY f.batter, name, pa, xba, xslg, woba, xwoba, xobp, xiso, exit_velocity_avg, barrel_batted_rate, flares_burners, solid, barrels, b_bb_percent;