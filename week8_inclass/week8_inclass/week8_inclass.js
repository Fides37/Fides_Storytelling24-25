var storyContent = {"inkVersion":21,"root":[["\n","^I want pizza. Which pizza? ","#","^IMAGE: images/miku.jpeg","/#","\n",["ev",{"^->":"0.6.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":"0.c-0","flg":18},{"s":["^Cheese",{"->":"$r","var":true},null]}],["ev",{"^->":"0.7.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":"0.c-1","flg":18},{"s":["^Pepperoni ","#","^CLASS: pizza","/#",{"->":"$r","var":true},null]}],["ev",{"^->":"0.8.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":"0.c-2","flg":18},{"s":["^Pineapple",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":"0.6.s"},[{"#n":"$r2"}],"\n",{"->":"0.g-0"},{"#f":5}],"c-1":["ev",{"^->":"0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":"0.7.s"},[{"#n":"$r2"}],"\n",{"->":"0.g-0"},{"#f":5}],"c-2":["ev",{"^->":"0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":"0.8.s"},[{"#n":"$r2"}],"\n",{"->":"0.g-0"},{"#f":5}],"g-0":["^Yummers, I ated it.","\n","^I'm thirsty, I need a bevy.","\n",["ev",{"^->":"0.g-0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-3","flg":18},{"s":["^Sprite",{"->":"$r","var":true},null]}],["ev",{"^->":"0.g-0.5.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-4","flg":18},{"s":["^Lemonade",{"->":"$r","var":true},null]}],["ev",{"^->":"0.g-0.6.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-5","flg":18},{"s":["^Iced Tea",{"->":"$r","var":true},null]}],{"c-3":["ev",{"^->":"0.g-0.c-3.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n","^...Bubbly","\n",{"->":"0.g-1"},{"#f":5}],"c-4":["ev",{"^->":"0.g-0.c-4.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.5.s"},[{"#n":"$r2"}],"\n","^...Tarte","\n",{"->":"0.g-1"},{"#f":5}],"c-5":["ev",{"^->":"0.g-0.c-5.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.6.s"},[{"#n":"$r2"}],"\n","^...Refreshing","\n",["ev","str","^Add lemons?","/str","/ev",{"*":".^.c-0","flg":20},["ev",{"^->":"0.g-0.c-5.9.6.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":18},{"s":["^Add sugar?",{"->":"$r","var":true},null]}],{"c-0":["^ Lemons are the golden beautiful elixer of the Earth.","\n","^Lemons make tea so much more refreshing!","\n",{"->":"0.g-1"},{"#f":5}],"c-1":["ev",{"^->":"0.g-0.c-5.9.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.6.s"},[{"#n":"$r2"}],"\n","^So sweet!","\n",{"->":"0.g-1"},{"#f":5}]}],{"#f":5}],"#f":5}],"g-1":["^I'm still hungry.","\n",{"->":"Dessert"},["done",{"#f":5,"#n":"g-2"}],{"#f":5}]}],"done",{"nothing":["^That's no fun. Order something!","\n",{"->":"dessert_menu"},{"#f":1}],"variables":[["ev",0,"/ev",{"temp=":"pizzaAmount"},"^What's the name on the order?","\n","ev","str","^Bob","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Gertrude","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Carly","/str","/ev",{"*":".^.c-2","flg":20},{"c-0":["\n","ev","str","^Bob","/str","/ev",{"VAR=":"myName","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-1":["\n","ev","str","^Gertrude","/str","/ev",{"VAR=":"myName","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-2":["\n","ev","str","^Carly","/str","/ev",{"VAR=":"myName","re":true},{"->":".^.^.g-0"},{"#f":5}],"g-0":["^Thank you ","ev",{"VAR?":"myName"},"out","/ev","^.","\n","^How many pizza's would you like to order?","\n","ev","str","^5","/str","/ev",{"*":".^.c-3","flg":20},"ev","str","^10","/str","/ev",{"*":".^.c-4","flg":20},{"c-3":["\n","ev",5,"/ev",{"temp=":"pizzaAmount","re":true},{"->":".^.^.^.g-1"},{"#f":5}],"c-4":["\n","ev",10,"/ev",{"temp=":"pizzaAmount","re":true},{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["ev",{"VAR?":"pizzaAmount"},"out","/ev","^? You big back. Have 1 extra.","\n","ev",{"VAR?":"pizzaAmount"},1,"+",{"temp=":"pizzaAmount","re":true},"/ev","^You now have ","ev",{"VAR?":"pizzaAmount"},"out","/ev","^ pizzas.","\n","ev",{"VAR?":"pizzaAmount"},5,"<=","/ev",[{"->":".^.b","c":true},{"b":["^ ",{"->":"memory"},{"->":".^.^.^.25"},null]}],"nop","\n","ev",{"VAR?":"pizzaAmount"},5,">","/ev",[{"->":".^.b","c":true},{"b":["^ Throwing a big party, huh? ",{"->":"memory"},{"->":".^.^.^.33"},null]}],"nop","\n",{"->":"memory"},{"#f":5}]}],{"#f":1}],"memory":[["^I remember what you ordered for dessert. Would you like to know?","\n","ev","str","^Tell me!","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ You choose ","ev",{"CNT?":"dessert_menu.0.c-0"},"/ev",[{"->":".^.b","c":true},{"b":["^cheesecake",{"->":".^.^.^.5"},null]}],"nop","^ ","ev",{"CNT?":"dessert_menu.0.c-1"},"/ev",[{"->":".^.b","c":true},{"b":["^ tiramisu",{"->":".^.^.^.11"},null]}],"nop","^. ","\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^I also know if you ordered \"nothing\".","\n","ev","str","^I did order nothing!","/str",{"CNT?":"nothing"},"/ev",{"*":".^.c-1","flg":21},"ev","str","^I ordered something.","/str",{"CNT?":"nothing"},"!","/ev",{"*":".^.c-2","flg":21},{"c-1":["^ You ordered nothing ","ev",{"CNT?":"nothing"},"out","/ev","^ time(s). ","\n",{"->":".^.^.^.g-1"},{"#f":5}],"c-2":["^ That's right, you ordered \"nothing\" ","ev",{"CNT?":"nothing"},"out","/ev","^ times.","\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^Thanks for ordering!","\n",{"->":"End"},{"#f":5}]}],{"#f":1}],"End":["end",{"#f":1}],"Dessert":["^Let's check the dessert menu. What should I order?","\n",{"->":"dessert_menu"},{"#f":1}],"dessert_menu":[["^The menu reads...","\n",["ev",{"^->":"dessert_menu.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Cheesecake ",{"->":"$r","var":true},null]}],["ev",{"^->":"dessert_menu.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Tiramisu",{"->":"$r","var":true},null]}],["ev",{"^->":"dessert_menu.0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^Nothing",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"dessert_menu.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^My favorite...mmmm","\n",{"->":".^.^.g-0"},{"#f":5}],"c-1":["ev",{"^->":"dessert_menu.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n","^Coffee and cream... delish.","\n",{"->":".^.^.g-0"},{"#f":5}],"c-2":["ev",{"^->":"dessert_menu.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n",{"->":"nothing"},{"->":".^.^.g-0"},{"#f":5}],"g-0":["^For dessert, you ordered ","ev",{"CNT?":".^.^.c-0"},"/ev",[{"->":".^.b","c":true},{"b":["^ cheesecake",{"->":".^.^.^.5"},null]}],"nop","^ ","ev",{"CNT?":".^.^.c-0"},"!","/ev",[{"->":".^.b","c":true},{"b":["^ tiramisu",{"->":".^.^.^.12"},null]}],"nop","^.","\n",{"->":"variables"},{"#f":5}]}],{"#f":1}],"global decl":["ev","str","^Tori","/str",{"VAR=":"myName"},true,{"VAR=":"testBool"},"/ev","end",null],"#f":1}],"listDefs":{}};