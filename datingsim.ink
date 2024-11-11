VAR myName = "name"

VAR attraction = 0

Big dreams and starry eyes, you've just transferred to one of the most prestigious universities in the country. You remember all those all-nighters and cups of coffee on your old dorm desk. Now, you're finally here...

I checked my schedule one last time, today must go perfect. "Ethics" at 9am and "Intro to Chemistry" at 12pm. I look at my watch: 8:30am. Looks like I still have some time to kill. 


 * [Let's get coffee] Can't start a day without a cup yummy coffee. There should be a coffee shop near campus. 
-> coffee
 * [Let's go to class early] It won't hurt to go to class a little early. I can play Solitaire on my laptop. 
->classearly

== coffee == 
The Teeny Beany. Everyone at UColl says this is the spot to be. I join the long line of impatient college students waiting to order. 
Finally, what seems like 10 years go by and it is finally my turn to order. I look up at the menu...

->menu

== menu == 

*[Espresso] "A small espresso, please."
 
"Good choice, that will be $4.32."

*[Latte] "A small latte, with extra foam please!"
"Coming right up, that will be $4.01." 

*[Dark Brew] "A dark brew roast, please."
"Your total is $4.86."

- Cup of coffee in hand, I am now ready to tackle anything. I deeply inhaled the rich aroma. A comforting, earthy steam enters my senses and melts my brain away. *bzz* A notification from my phone. "Class in 5 minutes." Oh, shoot! 

-> class_wJ

== classearly == 
I strolled across the campus courtyard to the Humanities Building. Built in 1820, it still stands strong and full of curious students. Wide steps of stone stairs led to the grand entrance, so many famous scholars have walked through that door. Now, it is my turn. 
I walked up the stairs and pressed against the massive wooden door. It wouldn't budge. A heavy door won't stop me. I took both hands and pushed with all my might. Not even a creak. Wow! A REALLY heavy door! 

"Here, I got you," said a voice behind me. A long arm from behind reaches for the door and effortlessly opens it. "After you," he smiles. 

*["Thank you."] "Thank you," I smile back and walked through the door. He follows behind. My face turns a little red. A totally hot guy just saw me utterly fail at opening a mere door- <em>how embarassing!</em>

-> name

==name ==
"I didn't catch your name," he waits. I look back, he looks at me with deep green eyes. 
* [Angel]
    ~myName = "Angel"
* [Selena]
    ~myName = "Selena"
* [Endi]
    ~myName = "Endi"

- "{myName}? That's a beautiful name," he looks at me with wonder.

"I'm Jeremiah!"
*["I like that name."] "I like that name." He smiled back. //add attraction point
    ~ attraction += 1

*["Nice to meet you."] "Nice to meet you, Jeremiah." He smiled back.

- We walked through the rustic corridors and approached a wide door. Jeremiah pulled the door handle. 
"After you."


-> class_J

== class_J == 
//class with J
I walked through the door and into the classroom. A huge lecture hall- something straight out of Harry Potter. The seats surrounded a stage, similar to an auditorium, with multiple rows climbing up. 

"Over here!" Jeremiah called out. I'm guessing he wants me to sit with him? 

*"Coming!"

- I sat down and began to ruffle through my bag. 

-> stationary

== stationary == 

<em> Okay, {myName}. You need to lock IN. </em> I took out my laptop, my notebooks, and my... Should I take out my cute pens or my serious pens? If I take out my cute stuff, he might judge me...

*(cutepens) Definitely cute pens!
If he judges me, whatever. At least I won't have to pretend.
~ attraction += 1

*(seriouspens) Play it safe, serious pens.
He's probably going to see me as a total kid. I can't let him know I'm obsessed with Hello Kitty. 

- I grabbed a couple of pens and placed them on my desk. He stares at them. {cutepens: His eyes widened and his lips curled into a sweet smile} 

-> lecture

== class_wJ == 
// class w/ J




-> lecturewJ

==lecturewJ==
smth

== lecture ==
"Good morning, class. I am Professor Jefferson. Welcome to Ethics 101 blah blah blah blah..." Before I knew it, class was already over. I looked over to Jeremiah, he's sleeping. I guess this is my cue to leave.

*(leave) Class is over. I'm leaving.

*(wake) I should wake Jeremiah up.

- {leave: -> leave_class} 
{wake: ->wake_class} 

==leave_class== 
I packed all my supplies back into my bag and got up from my seat. I glance at Jeremiah one last time before I leave.{attraction >1: Suddenly, I felt a tug on my sweater. ->party_invite}

* Can't be late for my next class.

- I left to go to my next class: Chemistry. I sat down and got my supplies out again. This should go fast. Anndd.... it was. Class is over once again.
*Back to the dorm I go! ->nolovedorm

== wake_class == 
I gently placed my hand on his shoulder and gave him a little shake. His body flinches and his eyes open. "How long have I been sleeping?"

*(truth)"Probably the entire class haha."

*(lie)"Not that long."

- {truth: "Oh yikes, no way I just missed the first lecture." {attraction > 1: ->party_invite}}
{lie: "You don't have to lie haha." {attraction > 1: ->party_invite}}

-> nolovedorm

== party_invite ==
<p> "There's supposed to be a killer party tonight... for all the first years. Do you... want to come with me?" </p>

* (y) "Yeah, sounds fun."

*(n) "No thanks, not my thing."

- {y: His eyes sparkled, "I'll see you there! You got another class after this?"}

{n: "Oh, okay... um..What's your next class?"}
*"I have Chemistry wiithh... Doctor Thomas." 

-> drthomas

== drthomas==
"I have him too, but on Thursday. Wish we had that class together," he said. 



== nolovedorm ==
I arrive back at my dorm. I got lucky and got a single, so no pesky roommate for me. Today was a looong day. I kicked my shoes off and jumped onto my surprisingly comfortable bed. I sighed and closed my eyes. Jeremiah. His perfect, dreamy eyes. His gorgeous locks. His luscious lips. God, the things I'd do to... Oh, what am I saying? Snap out of it!

<em> bzz bzz </em> ... I checked my phone. "UColl Updates: Come to the Orientation Party! Snacks, music, and games provided! See you all at 8pm!"
->partynotif

== partynotif==

*[That sounds fun, let's go.] He </em> might be there...->noloveparty

*[Nah, that sounds lame.] ->noparty

==noparty==
Not going to a college party is even lamer. You're going to that party.
->partynotif

== noloveparty == 

->End

== End ==
-> End