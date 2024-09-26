"Mystery Demo" by Fides Wong

Release along with interpreter. 

When play begins, say "My hooman just left the house, finally. It said I was getting too fat and hid my delicious treats from me. Curse you, hooman. Today, I am determined to find them and feast. The last time I saw them was in the cabinet in the kitchen. I should probably start there."

When play begins:
	now the player carries the collar;

[[bedroom]]
The Bedroom is a room. The description of the Bedroom is "Dirty laundry litter the hardwood floors. There is a bed, a nightstand, and a desk with a carpet underneath. The Bathroom is to the west and the Kitchen is to the north." 

The Bed is an undescribed supporter in the Bedroom. The description is "A big and spacious bed with lots and lots of soft blankets. My favorite place to nap is on the big pillow."

The Pillow is an undescribed thing on the Bed in the Bedroom. The description is "A big and fluffy pillow covered with my fur."

The Blanket is an undescribed thing on the Bed in the Bedroom. The description is "A big fuzzy pink blanket. It smells like my Hooman."

The Key is an undescribed thing in the Bedroom. The Key can be found. The key is not found. 

Looking under is an action applying to one thing. Understand "look under [something]" as looking under.

Instead of looking under a bed:
	if Key is found :
		say "There's nothing else under here." instead.
	otherwise:
		now the Key is found;
		now the player carries the Key;
		say "There's a key. You take it." instead.

The Wardrobe is an undescribed container in the Bedroom. The Wardrobe is lockable and locked. The Wardrobe is closed. The description is "A tall, dark, wooden wardrobe. When I was a kitten, I used to climb inside and pee. Since the, my Hooman locked it. Looks like it needs some sort of code."

[[wardrobe]]
Instead of opening the Wardrobe:
	if the Wardrobe is closed:
		say "There's a combination lock for 4 numbers on the doors...";
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
The Desk is an undescribed supporter in the Bedroom. The description is "a desk with a book."

The book is an undescribed thing on the Desk in the Bedroom. The description is "an old rotting book."

[[collar]]
The Collar is a undescribed thing in the Bedroom. The description is "A green collar with my name on it. Milo."


[[Kitchen]]
The Kitchen is a room. The Kitchen is north of the Bedroom. The description of the Kitchen is "My favorite room in this entire apartment.  "

[[Bathroom]]

The Bathroom is a room. The Bathroom is west of the Bedroom. The description of the Bathroom is "ME-ow. It's a cluttered mess. Small tubes of colorful paste are scattered all over the sink, or my personal water fountain as I like to call it. A mirror cabinet sits above the faucet, I see many types of small bottles peaking through. Right next to the sink is the toilet; sometimes I use it, too. The shower is covered with soap and goo, the bottles that were once on the shelf above the tub now lie flat on the floor. It wasn't always like this."

Instead of going to the Bathroom:
	If the Rain Boots is found and the player is wearing the Rain Boots:
		say "You go into the bathroom.";
		continue the action;
	Otherwise:
		say "The floor is too wet and my paws will get wet! I need my boots." instead.

test wardrobe with "open wardrobe/1224/open box". 






