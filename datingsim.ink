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

*(espresso)[Espresso] "A small espresso, please."
 
"Good choice, that will be $4.32."

*(latte)[Latte] "A small latte, with extra foam please!"
"Coming right up, that will be $4.01." 

*(darkbrew)[Dark Brew] "A dark brew roast, please."
"Your total is $4.86."

- Cup of coffee in hand, I am now ready to tackle anything. I deeply inhaled the rich aroma. A comforting, earthy steam enters my senses and melts my brain away. *bzz* A notification from my phone. "Class in 5 minutes." Oh, shoot! 

-> class_woJ

== classearly == 
I strolled across the campus courtyard to the Humanities Building. Built in 1820, it still stands strong and full of curious students. Wide steps of stone stairs led to the grand entrance, so many famous scholars have walked through that door. Now, it is my turn. 
I walked up the stairs and pressed against the massive wooden door. It wouldn't budge. A heavy door won't stop me. I took both hands and pushed with all my might. Not even a creak. Wow! A REALLY heavy door! 

"Here, I got you," said a deep voice. A long arm from behind reaches for the door and effortlessly opens it. "After you," he smiles. 

*["Thank you."] "Thank you," I smile back and walked through the door. He follows behind. My face turns a little red. A totally hot guy just saw me utterly fail at opening a mere door- <em>how embarassing!</em>

-> name

==name ==
"I didn't catch your name," he waits. I look back, he looks at me with deep green eyes. 
* [Angel]
    ~myName = "Angel"
* [Selena]
    ~myName = "Selena"
* [Alex]
    ~myName = "Alex"

- "{myName}? That's a beautiful name," he looks at me with wonder.

"I'm Jeremiah!"
*["I like that name."] "I like that name." 
He smiled back.
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
If he judges me, whatever. I'm not changing myself just for some guy.
~ attraction += 1

*(seriouspens) Play it safe, serious pens.
He's probably going to see me as a total kid. I can't let him know I'm obsessed with Hello Kitty. 

- I grabbed a couple of pens and placed them on my desk. He stares at them. {cutepens: His eyes widened and his lips curled into a sweet smile.} He put his head down and closed his eyes. {coffee: ->offercoffee}

-> lecture

==offercoffee== 
*["You want some coffee?"]
"Would you like some coffee?" I coffered my cup to him, "I didn't drink from it, yet."
*[He must be tired.] He probably stayed up, oh well. Sucks to suck, I guess. 
->lecture

- "Are you sure? I wouldn't want to take this from you." 

*"I insist."
 "Thank you so much, wow." 
    I pushed the cup onto his desk. He took a sip. "Mmm... I love the taste of {menu.espresso: espresso} {menu.latte: a latte} {menu.darkbrew: a dark roast}."
    ~attraction +=1
->lecture
*"You probably need it more than me."
    "Thank you so much, wow." 
    I pushed the cup onto his desk. He took a sip. "Mmm... I love the taste of {menu.espresso: espresso} {menu.latte: latte} {menu.darkbrew: a dark roast}."
    ~attraction +=1
->lecture


== class_woJ == 
I spedwalked to the Humanities Building and ran up the stone steps. I pushed the wooden door, but the door wouldn't budge. What's with this thing?! I'm going to be late! I turned my back onto the door and pushed with all my might. A small creak and then a thud. I marched my way down the corridor and into the classroom. 8:59, perfect. 

I looked around to find a seat, but it was packed. There was only one seat open. I tip toed into the lecture hall and took my seat on the edge. I looked next to me and saw the most gorgeous man I've ever seen in my life. Seriously, he could be a model. 

*"Hi, I'm..."
** [Angel] "I'm Angel."
~myName = "Angel"
** [Selena] "I'm Selena." 
~myName = "Selena"
** [Alex] "I'm Alex."
~myName = "Alex"

- "I'm Jeremiah," he smiled back. My heart almost skipped a beat, that was how attractive he was.

->stationary

== lecture ==
"Good morning, class. I am Professor Jefferson. Welcome to Ethics 101 blah blah blah blah..." Before I knew it, class was already over. I looked over to Jeremiah, he's sleeping. I guess this is my cue to leave.

*(leave) Class is over. I'm leaving.

*(wake) I should wake Jeremiah up.

- {leave: -> leave_class} 
{wake: ->wake_class} 

==leave_class== 
I packed all my supplies back into my bag and got up from my seat. I glance at Jeremiah one last time before I leave.{attraction >1: Suddenly, I felt a tug on my sweater. ->party_invite}

* Can't be late for my next class.

->chemistry

== wake_class == 
I gently placed my hand on his shoulder and gave him a little shake. His body flinches and his eyes open. "How long have I been sleeping?"

*(truth)"Probably the entire class haha."

*(lie)"Not that long."

- {truth: "Oh yikes, no way I just missed the first lecture." {attraction > 1: ->party_invite}}
{lie: "You don't have to lie haha." {attraction > 1: ->party_invite}}

-> nextclass

== party_invite ==
<p> "There's supposed to be a killer party tonight... for all the first years. Do you... want to come with me?" </p>

* (y) "Yeah, sounds fun."

*(n) "No thanks, not my thing."

- {y: His eyes sparkled, "I'll see you there! Meet me by the courtyard at 7:30pm, be there or be square!"}

{n: "Oh, okay... um..."}
->nextclass


==nextclass==
"You got another class after this?" He asked.
*["Chemistry"] "I have Chemistry wiiiithh... Doctor Thomas. What about you?" 
-> drthomas

== drthomas==
"I have him too, but on Thursday. I have Storytelling/ Interactive Narrative next," he said. "Oh shoot, I gotta get to my next class." 
* (stclass) "Oooh, I wanna take that class."  

*(fun) "Have fun, Jeremiah!"

- {stclass: "Yeah, I read the description online and it sounds awesome, the professor is rated really high on ratemyprofessor. {party_invite.y:See you tonight, {myName}!"} He waved goodbye and left the class.<br> I should probably head back to my next class too.} 
{fun: Thanks! See you tonight!" He waved goodbye and left the class. <br> I should probably head back to my next class too.}
*Let's go to Chemistry.
->chemistry

== chemistry ==
- I left to go to my next class: Chemistry. I sat down and got my supplies out again. This should go fast. Anndd.... it was. Class is over once again.
*Back to the dorm I go! 
{attraction <=1: ->nolovedorm}
{party_invite.n: ->nolovedorm}
{party_invite.y: ->dorm}

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

==dorm== 
I arrive back at my dorm. I got lucky and got a single, so no pesky roommate for me. Today was a looong day. I kicked my shoes off and jumped onto my surprisingly comfortable bed. I sighed and closed my eyes. Jeremiah. His perfect, dreamy eyes. His gorgeous locks. His luscious lips. God, the things I'd do to... Oh, what am I saying? Snap out of it!

But he did ask me to go to the party with him. Does this mean he likes me? Oh, {myName}, do you even hear yourself? This isn't high school.

*But what if he DOES like you?

- I stuffed my face in my pillow. Who knew I was this delusional? Oh, shit. What am I gonna wear?

->outfit

== outfit ==
Okay, {myName}. You didn't just spend a shit ton of money on new clothes for nothing. Let's see what I can come up with...

*(cute) Something sweet and cute?

*(sexy) What about something sexy?

*(cool) Maybe something cool?

- {cute: This is perfect! Can't go wrong with something cute.} {sexy: Damn, I look HOT! I'll definitely catch some eyes.} {cool: He'll definitely like this. Nothing like looking badass.} What?! It's already 7:25?!
*Let's run!
-> meetwithJ

==meetwithJ== 
Running is hard to do with fancy shoes, but I cannot be late- NOT to this! I leaped out into the hallway and made my way out the door. The courtyard isn't far.

*[RUN!!]

- I finally reached the courtyard, despite my struggles. There he is!
*  "Hey!"
    "Heya!" He looked me up and down, and then smiled.->courtyard
* "Boo!" 
    "AaaAAAahhhhh!!!! You scared me!"
    **"Whoops." 
    
{attraction >= 2: ->compliment} 
{attraction <2: ->courtyard}

==courtyard==
"You ready to go to the party?"

*"Yes!!!" ->partywJ
*"Nahh"
    He looked at me with a sarcastic smile, "I'll ask you again..." -> courtyard

== compliment== 
He looked me down, {outfit.cute: "you look... adorable."} {outfit.sexy: "damn, you look... amazing."} {outfit.cool: "you look... badass."} His eyes were glued to me. High-five, me. 
~ attraction += 2

*"You don't look half bad yourself."

*"You look cool, too!"

- "Thank you, princess," he says with a sly smile. Is it just me or did it get 10 degrees hotter? "You ready to go?"
*"Yes!"
-> partywJ
*"Nahh."
    "Okay, princess, I'll wait until you're ready."
    **"I'm ready!"
    
-> partywJ

==partywJ==
We walked to the Student Park, a whole park outside the campus dedicated to students with a huge log cabin in the center. We could hear the party from outside the cabin, sounds wild. The place was decorated with string lights, balloons, the music was blasting. A bunch of people were outside, just mingling and having a good time. Looks like some people snuck some alcohol in this party, too. 

* "You wanna get a drink and sit down?"
    "Sure! I'll get some drinks and you find somewhere comfy to sit." ->sit
    

== sit ==
<br> I looked around to find some open spots. There were a couple of outdoor cushions near the pool. I sat down.  
*...
A couple minutes go by.
    **...
    A few minutes go by. 
    ***...
    
    ->talk
    
== talk ==
<br> "Hey, sorry I took long! I ran into some classmates."
*"No worries."
    "Here."
*"Took you long enough."
    "...Sorry." 
    ~attraction -= 1 

- He handed me a cup of punch and sat down next to me. We both took a sip. 
*(stick)["You don't have to stick with me."] "I feel bad, you know you don't have to stick with me all night, right?"
  {attraction >=4: "But I only wanna stay with you."} {attraction <4: "You're chill, though! Besides, I'm already here."}
*(gofun)["Go have fun"] "Go have fun! Dance, party, go talk with new people!"
{attraction >=4: "But I only wanna talk to you."} {attraction <4: "Yeah sure, but I'm here with you right now."}

-{attraction} I laughed.
*"Wow, you're clingy."
    {attraction >=4: "You don't even know," his eyes stared into mine, as if he was hypnotized by me.} {attraction <4: "Sometimes," he shrugged.}
    **"I like that." 
        "Oh, so you do," he teased.
    ~attraction +=1

*"Good to know, I'm good company."
    {attraction >=4: "You're amazing company. I never wanna leave it."} {attraction <4: You're a rockstar, duh."}
    
- Damn, I'm starting to get butterflies. 

-> talk2

== talk2 == 
"Do you like to dance?" He got up and extended his hand.
*"I've been waiting for this!" ->dance
     
*"No, I could never."
    "Well, it's now or never." He still had his hand extended for me. 
    **"Sure, what the hell." ->dance

==dance ==
I took his hand. {attraction >=5: He pulled me close to his body and grabbed my waist. I locked eyes with his emerald green eyes and I could smell his sweet breath.->lovedance} {attraction <5: He grabbed my hand and spun me around. He was surprisingly a good dancer, his feet and arms moved with the rhythm.}
*["This is so fun!] "This is the most fun I've had in so long!"
*["Time of my life!"] "I'm having the fricking time of my life right now!"

- "Me toooo!!" He laughed while doing the robot.
~attraction +=1 

-> chill


==lovedance==
He held me close, keeping a firm, but gentle grip on my waist. I could feel every vibration, every breath, every heart beat of this man. We moved to the beat of the song, each gradually more and more intense.

*"You're a good dancer."
*"You're amazing."

- "I'm alright, but you. You're on fire."
~attraction +=1

->chill

==chill==
{attraction} After a handful of songs, we both sat down on the cushions and took a big gulp of the punch. 

"That was so fun! I didn't know you were such a good dancer." 
*"There's a lot of things about me you don't know about."
    "Oh, like what?"
    ** (smth)"I can lick my elbow."
    ** (smth1)"I have double jointed knees."
 

*"Yeah, you're an awesome dancer!"
    "Thanks {attraction >=3:, princess}!"
    
- {smth: "Woah, that's sick!"} {smth1:"Woah, that's sick!"} 
    ~attraction +=1
-> nobeachinv


{attraction>=6: -> beachinvite}


== beachinvite ==
"Hey, there's this really cool place I wanna show you," he said averting his eyes from my gaze.

*"You're not gonna murder me, right?"
    He chuckled, "no, {attraction >=3: princess}. I could never."

*"You wanna take ME?" 
    "Yeah, I think you're really cool and I wanna show you." 
    
- He took me by my hand, wrapping his fingers onto mine. "Let's get out of here, yeah?"
*"Yeah." I had been bewitched by him. -> beach


== noloveparty == 
Something!

->End


==nobeachinv== 
"You're such a cool person. You're like my best friend already!"

Oh. So that's how he sees me. Just a friend. 
*Oh well.

- That's not so bad. Maybe it hurts because I actually expected something to come out of it. Moral of the story, don't be delulu. 

-> DONE

== beach == 
->End

== End ==
-> End