"Mystery Demo" by Fides Wong

Release along with interpreter. 

When play begins, say "My hooman finally left the house. It hid the treats away because it said I was getting too fat. Curse you, hooman. [paragraph break]Today, I am determined to find them and feast. The last time I saw them was in the cabinet in the kitchen. I should probably start there."

When play begins:
	now the player carries the collar;

[[bedroom]]
The Bedroom is a room. The description of the Bedroom is "Dirty laundry litter the hardwood floors. There is a bed, a nightstand, a wardrobe, and a desk. [paragraph break]The bathroom is to the west and the kitchen is to the north." 

The Bed is an undescribed supporter in the Bedroom. The description is "A big and spacious bed with lots and lots of soft blankets. My favorite place to nap is on the big pillow."

The Pillow is an undescribed thing on the Bed in the Bedroom. The description is "A big and fluffy pillow covered with my fur."

The Blankets is an undescribed thing on the Bed in the Bedroom. The description is "A big fuzzy pink blanket. It smells like my Hooman."

The Laundry is an undescribed thing in the Bedroom. The description is "A couple shirts and socks are scattered around the floor. My hooman's been so lazy lately." 

The Rug is an undescribed thing in the Bedroom. The description is "A white and gray woven rug with scratch marks and fabric breaking loose."

Instead of looking under the rug:
	say "Just hair ties and lint."

The Key is an undescribed thing in the Bedroom. The Key can be found. The Key is not found. The description of the Key is "A small silver key."

Instead of looking under the Bed:
	if the Key is found:
		say "There is nothing else here." instead;
	Otherwise:
		now the Key is found;
		now the player carries the Key;
		say "There's a key under here. You take it." instead.

The Wardrobe is an undescribed container in the Bedroom. The Wardrobe is lockable and locked. The Wardrobe is closed. The description is "A tall, dark, wooden wardrobe. When I was a kitten, I used to climb inside and pee. Since then, my Hooman locked it. It looks like it needs some sort of code."

[[wardrobe]]
Instead of opening the Wardrobe:
	if the Wardrobe is closed:
		say "There's a combination lock for 4 numbers on the doors... Hint: M's Bday";
		now the command prompt is "Enter a combination. >";
		continue the action;
	otherwise:
		continue the action.
		
After reading a command when the command prompt is "Enter a combination. >":
	if the player's command matches "1224":
		say "The wardrobe is now unlocked. There is a rack with a couple of sweaters and empty hangers. A pair of human shoes and a box sit on the floor.";
		now the Wardrobe is unlocked;
		now the Wardrobe is open;
		now the command prompt is ">";
	otherwise:
		say "That's not right. The wardrobe is still locked.";
		now the command prompt is "Try again? (Yes or No) >";
	reject the player's command.

After reading a command when the command prompt is "Try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y":
		now the command prompt is "Enter a combination. >";
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n":
		now the command prompt is ">";
		say "Let's look for the comination.";
		reject the player's command;
	otherwise:
		now the command prompt is ">";
		reject the player's command.

[[stuff in wardrobe]]
The Rain Boots is an undescribed wearable thing in the Wardrobe in the Bedroom. The Rain Boots can be found. The Rain Boots is not found. The description of the Rain Boots is "Two pairs of small yellow rain boots."

The Box is an undescribed closed openable container in the Wardrobe in the Bedroom. The description is "A small box."

Instead of opening the Box:
	if the Box is closed:
		now the Box is open;
		now the Rain Boots is found;
		now the player carries the Rain Boots;
		now the player wears the Rain Boots;
		say "Two small pairs of cat rain boots. There they are! I slip my tiny paws into each boot." instead;
	if Box is open and the Rain Boots is found:
		say "A fly flies out of the box. The box is empty." instead;
	Otherwise:
		say "A fly flies out of the box. The box is empty." instead.

[[nightstand]]
The Nightstand is an undescribed supporter in the Bedroom. The description is "A wooden nightstand that sits to the left of the bed. There is a mug."

The Mug is an undescribed thing on the Nightstand in the Bedroom. The description is "A red mug, half full of stale coffee."

Instead of taking Mug:
	say "Too hard to bite, too heavy to push off the table."
	
[[desk]] 
The Desk is an undescribed supporter in the Bedroom. The description is "A wooden desk. There's some papers are chaotically spread on the desk. There is a picture frame, a calendar, and a lamp."

The Papers is an undescribed thing on the Desk in the Bedroom. The description is "These papers have a 'Final Notice' in red on the front. Don't ask how I learned to read, I'm smarter than you think I am." 

The Picture Frame is an undescribed thing on the Desk in the Bedroom. The description is "That's my Hooman and some guy who used to come here a lot (I didn't like him). There's a mark covering that guy's face now."

The Calendar is an undescribed thing on the Desk in the Bedroom. The description is "A pink and purple calendar with a red circle around the 13th and 24th. The 13th says 'Reminder: AC man comes to fix bathroom vent. The 24th reads 'Milo's Birthday!'"

The Lamp is an undescribed thing on the Desk in the Bedroom. The description is "A long black lamp. It's a little dusty."

The book is an undescribed thing on the Desk in the Bedroom. The description is "An old rotting book."

[[collar]]
The Collar is a undescribed thing in the Bedroom. The description is "A green collar with my name on it. Milo."


[[Kitchen]]
The Kitchen is a room. The Kitchen is north of the Bedroom. The description of the Kitchen is "I smell treats, but I see no treats. Instead, I see a cabinet, where the treats usually are, a fridge, a sink and a table. [paragraph break]The bedroom is to the south."

The Sink is an undescribed supporter in the Kitchen. The description is "A metal sink. A dirty cup and plate eagerly wait on the bottom of the sink to be cleaned. A sponge and dish soap sit next to the faucet."

The Cup is an undescribed thing on the Sink in the Kitchen. The description is "A green tea cup with old mint tea. It's a little chipped on the brim. That was my bad..."

The Plate is an undescribed thing on the Sink in the Kitchen. The description is "A small green plate with tea stains."

The Sponge is an undescribed thing on the Sink in the Kitchen. The description is "A damp yellow sponge." 

The Dish Soap is an undescribed thing on the Sink in the Kitchen. The description is "Blue dish soap. I licked it once, it was not a good time."

[[cabinet]]
The Cabinet is an undescribed container in the Kitchen. The Cabinet is lockable and locked. The Cabinet is closed. The description is "The cabinet hangs on the wall right next to the fridge. I used to be able to climb on the fridge and open the cabinet, but my cursed Hooman locked it. How cruel." 

Instead of opening the Cabinet:
	if the Key is not found:
		say "Shut tight. No key, no treats." instead;
	If the Key is found and the player carries the Key:
		now the Cabinet is open;
		say "The cabinet is opened. No treats. All I see is a fork where the treats should be." instead.
		
The Fork is an undescribed thing in the Cabinet in the Kitchen. The description is "A bent silver fork with years of experience."

[[fridge]]
The Fridge is an undescribed supporter in the Kitchen. The description is "A giant metal fridge. It takes a gulp and a leap of faith to get on top of that thing. There are some magnets and a note stuck to the fridge." 

The Magnets is an undescribed thing on the Fridge in the Kitchen. The description is "I think my Hooman bought these magnets from a shady street vendor because that is NOT Mickey Mouse." 

The Note is an undescribed thing on the Fridge in the Kitchen. The description is "A pink sticky note. It reads 'Get a Christmas themed cake for M." 

Instead of opening the Fridge:
	say "Too heavy..." instead.


[[Bathroom]]

The Bathroom is a room. The Bathroom is west of the Bedroom. The description of the Bathroom is "ME-ow. It's a cluttered mess. I smell something familiar in here. There is a sink with a mirror, a toilet, and a bath. [paragraph break]The bedroom is to the west."

Instead of going to the Bathroom:
	If the Rain Boots is found and the player is wearing the Rain Boots:
		say "You go into the bathroom.";
		continue the action;
	Otherwise:
		say "The floor is too wet and my paws will get wet! I need my boots." instead.

test wardrobe with "open wardrobe/1224/open box". 






