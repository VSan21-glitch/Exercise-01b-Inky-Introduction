/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance of a cave! {not torch_pickup: There is a torch on the ground.} {not sword_pickup: There is also a sword on the ground} Cave extends to east and west
+ [Take the East Tunnel.] -> east_tunnel
+ [Take the West Tunnel.] -> west_tunnel
+ [Take the North Tunnel.] -> north_tunnel
+ [Take the South Tunnel.] -> south_tunnel
* [Pick up the Torch] -> torch_pickup
* [Pick up the sword] -> sword_pickup

== east_tunnel ==
You are in the East. Too dark to see anyhing.
* {torch_pickup} [Light torch] -> East_tunnel_lit
+ [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the West. There's a monster.
* {sword_pickup} [Use sword] -> West_tunnel_dead_monster
+ [Go back] -> cave_mouth
-> END 

=== north_tunnel ===
You are in the North. A chilly breeze makes you shiver.
+ [Go back] -> cave_mouth
-> END

=== south_tunnel ===
You are in the South. You can see dust form in the corner.
+ [Go back] -> cave_mouth
-> END


=== torch_pickup ===
You picked up a torch. May it light the way.
*[Go back] -> cave_mouth
-> END

=== East_tunnel_lit ===
East tunnel is lit now.
-> END

=== sword_pickup ===
You picked up an iron sword.
*[Go back] -> cave_mouth
-> END

=== West_tunnel_dead_monster ===
You killed the monster, you can move on now.
-> END


