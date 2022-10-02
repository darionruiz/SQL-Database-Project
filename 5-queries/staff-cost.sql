-- This query pulls the information for the staff cost dashboard.
-- This shows the employee work date, hours, and cost for each employee & the overall daily cost.

SELECT
r.date,
s.first_name,
s.last_name,
s.hourly_rate,
sh.start_time,
sh.end_time,
((hour(timediff(sh.end_time, sh.start_time)) * 60) + (minute(timediff(sh.end_time, sh.start_time)))) / 60
AS hours_in_shift,
((hour(timediff(sh.end_time, sh.start_time)) * 60) + (minute(timediff(sh.end_time, sh.start_time)))) / 60 * s.hourly_rate
AS staff_cost

FROM
rotations AS r

LEFT JOIN staff AS s
ON r.staff_id = s.staff_id

LEFT JOIN shifts AS sh
ON r.shift_id = sh.shift_id
