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

-> stationary

== stationary == 

<em> Okay, {myName}. You need to lock IN. </em> I took out my laptop, my notebooks, and my... Should I take out my cute pens or my serious pens? If I take out my cute stuff, he might judge me...

*[Cute pens] If he judges me, whatever. At least I won't have to pretend.
~ attraction += 1

*[Serious pens] He's probably going to see me as a total kid. I can't let him know I'm obsessed with Hello Kitty. Let's


- He stares at my pens. 

-> lecture

== class_wJ == 
// class w/ J
HiSomething
-> lecture

== lecture == 
"Good morning, class. I am Professor Jefferson. Welcome to Ethics 101. I'm sure..."


->End

== End ==
-> End