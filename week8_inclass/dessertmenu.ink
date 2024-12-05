== Dessert ==
Let's check the dessert menu. What should I order?
-> dessert_menu

== dessert_menu
The menu reads...
+ (cheesecake) Cheesecake //() makes labels
    My favorite...mmmm
+ (tira) Tiramisu
   Coffee and cream... delish. 

+ Nothing
-> nothing

// - For dessert, you ordered {cheesecake: cheesecake} {tira: tiramisu}.
- For dessert, you ordered {cheesecake: cheesecake} {not cheesecake: tiramisu}.
// labels like these r temporary not global

->variables
