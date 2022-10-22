
{% docs winrate %}

Win rate looks at every player in the filtered view and calculates if players on that specific
row beats (as in outscore them for the purpose of 9 category fantasy scoring) them. The cumulative
sum of wins is returned - the higher the number, the better the individual performance of that player.

There are some known defiencies: very effecient, low scoring players are over rated - i.e. it has
proven to be incredibly difficult win with rosters composed of only these players. further simulation
is required to improve this metric.

{% enddocs %}
