INCLUDE dessertmenu.ink




VAR myName = "Tori"
VAR testBool = true
CONST myConstant = 6 //similar to global, but cannot change like global

//integers: whole numbers, float:decimals
//bouleons: true/false
//string: text
//+= sticky choice

I want pizza. Which pizza? # IMAGE: images/miku.jpeg

* Cheese
 * Pepperoni # CLASS: pizza
 * Pineapple
 
- Yummers, I ated it. 

I'm thirsty, I need a bevy.
* Sprite
    ...Bubbly
* (Lemonade) Lemonade
    ...Tarte
* Iced Tea
    ...Refreshing
    ** [Add lemons?] Lemons are the golden beautiful elixer of the Earth.
        Lemons make tea so much more refreshing!
    ** Add sugar?
        So sweet!
- I'm still hungry.
-> Dessert

== nothing ==
  That's no fun. Order something!
    -> dessert_menu
    
== variables ==
~temp pizzaAmount = 0

What's the name on the order?
* [Bob]
    ~myName = "Bob"
*[Gertrude]
    ~myName = "Gertrude"
*[Carly]
    ~myName = "Carly"

- Thank you {myName}.

How many pizza's would you like to order?
*[5]
    ~pizzaAmount = 5
 *[10]
    ~pizzaAmount = 10
    
- {pizzaAmount}? You big back. Have 1 extra. 
    ~ pizzaAmount += 1

You now have {pizzaAmount} pizzas.

{pizzaAmount <= 5: ->memory} //check for threshhold
{pizzaAmount >5: Throwing a big party, huh? -> memory}

-> memory
== memory == 
I remember what you ordered for dessert. Would you like to know? 
*[Tell me!] You choose {dessert_menu.cheesecake:cheesecake} {dessert_menu.tira: tiramisu}. 
// to access temp labels in other knots, say the {knot_name.label_name:print}

- I also know if you ordered "nothing". 
* {nothing} [I did order nothing!] You ordered nothing {nothing} time(s). 

*{not nothing} [I ordered something.] That's right, you ordered "nothing" {nothing} times.

-Thanks for ordering!
-> End 

//this is a comment

== End ==
    -> END
