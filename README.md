COSC2659 iOS Development
Assignment 1
Lecturer: Mr. Tom Huynh




Student name: Thai Manh Phi
Student ID: s3878070
Tutorial group: 2
 

1.	Introduction

There are many foods application that exist in the world: food delivery applications, restaurant ordering, and more. Many of them follow the traditional way of designing the application in an outdated design language, and many of them don’t have a minimalistic design and are user-friendly. Since then, the sparked of an idea to design a food ordering application that embraces user-friendliness, minimalistic and intuitive design that allows the user to focus on more of what matters, instead of trying to figure out how to use it. 
Introducing EatX, an application that is designed for restaurants to replace traditional menus and bring technology into customer services. No need to wait for a waitress to come to you in order to order your food. No need to be pushed by a waitress when you are taking a long time to figure out what to order. With EatX, you can order your meal at peace.

2.	EatX functionalities

Main features:

a.	Food list
EatX's main functionalities present the user with a list of food offered by the restaurant. Unlike the traditional menu, the user can scroll through the menu dynamically to view without the need of flipping between pages.

  <img width="197" alt="image" src="https://user-images.githubusercontent.com/71892904/182123394-8aa9ab3b-66c1-416a-977a-cea8f8e0136f.png">
                                                           				   Figure 1: EatX home screen
                                                                     
b.	Food details

  <img width="175" alt="image" src="https://user-images.githubusercontent.com/71892904/182123492-d8501999-baad-4feb-aaa4-abe497a1f7e7.png"> <img width="177" alt="image" src="https://user-images.githubusercontent.com/71892904/182123509-cfecdd67-f27a-4637-9eec-f57ae2f9fb82.png">

Figure 2: Food content view

When selecting a dish from the list, a detailed view of the selected food will slide in providing the user with all of the information about the food such as a brief description of what the food will look likes, the price as well as some food picture and food types.
The design of this view here is aimed to shift the focus of the user with a big beautiful visual of what the food will look like and users can scroll horizontally to view more pictures.

Extra functionalities:

a.	Tap to expand

  <img width="204" alt="image" src="https://user-images.githubusercontent.com/71892904/182123565-9ca800b3-aaf8-4b53-85fc-0e5d44a3e877.png"> <img width="203" alt="image" src="https://user-images.githubusercontent.com/71892904/182123584-01fe0b9a-383c-4e97-9670-8e3190b223d5.png">

Figure 3: Tap to expand function

Adding the ability to hide unnecessary information is one way to clean up the user interface. When needed to read the full text, the user is prompted with a “more…” button with the functionality to unwrap the text, expanding to its full length.

b.	Add to cart

 <img width="278" alt="image" src="https://user-images.githubusercontent.com/71892904/182123610-afc58de5-8110-469f-80da-9c08b3f564af.png">

Figure 4: Add to cart function

The most important function is the capability to add the item to the cart. It enables the user to put the food into the cart in order to proceed to the next step.
The “Add to cart” button will be always present at the bottom of the screen whenever which iPhone or iPad you are on brings forth user friendliness without the need to search for the button if they are out of view.
After pressing the button “Add to cart”, the system will pop up with a notification to confirm with the user that their chosen item has been added to the cart.

<img width="179" alt="image" src="https://user-images.githubusercontent.com/71892904/182123650-d50cc979-bc5c-4637-b720-f8a5cc4712e2.png">

Figure 5: Notification of add to cart successfully

c.	Search food list

  <img width="185" alt="image" src="https://user-images.githubusercontent.com/71892904/182123700-51db0f33-4aa6-4c52-a74d-f34b3591d2ca.png"> <img width="185" alt="image" src="https://user-images.githubusercontent.com/71892904/182123712-5d89af5d-440f-4d3f-ba13-3b2eb183a34d.png">

Figure 6: Search function

One of the best abilities offers by the application is to be able to search for a specific food rather than the traditional menu that the user needs to read the whole menu in order to find their preferred food. 
The search bar will be above the list and hidden by default. Users need to scroll above the list and pull it down one more time for the search bar to appear.
 
 <img width="237" alt="image" src="https://user-images.githubusercontent.com/71892904/182123729-d2dbc42f-618d-4fe3-9534-1f6597f4564b.png">

Figure 7: Search demonstration

d.	Filter food list

<img width="224" alt="image" src="https://user-images.githubusercontent.com/71892904/182123757-76030592-7f4d-4a0f-adca-0ff9c68aeb25.png">
 
Figure 8: Filter function

To bring more convenience to the user experience. Users can now filter the list by the food type such as Breakfast, dessert, and more. By clicking on a type, the list will change dynamically and show only the result of the food-related to that type.
Moreover, users can use filters alongside with search to find a food with a specific type bringing more usability to the application.

e.	Check out

<img width="221" alt="image" src="https://user-images.githubusercontent.com/71892904/182123808-fdb5a6d9-ad2c-4d10-8fda-a3c276382f2e.png"> <img width="222" alt="image" src="https://user-images.githubusercontent.com/71892904/182123821-6b01a136-09b2-44e0-a197-245bd9b8ab50.png">
  
Figure 9: Check out function with notification

Extended with the add-to-card function, the application will present the user with a summary of their cart. While reviewing, if users want to add more items to the card, they can do so by swiping down to dismiss the pop-up view or clicking on the “dismiss” button. This function will temporarily close the popup view and not proceed to order the user food’s card.  By only clicking on the “Confirm order!” button, the application will create an order and clear out the cart for the user.
 
 <img width="237" alt="image" src="https://user-images.githubusercontent.com/71892904/182123869-93e7caa0-0222-4ae5-9289-596185c6d86b.png">

Figure 10: Empty cart view

This interface will check for the user cart. If there is no item in the user cart, the application will show this screen to the user prompting them with the information “Your cart is empty”.

f.	Support iOS, iPadOS dark mode

 <img width="238" alt="image" src="https://user-images.githubusercontent.com/71892904/182123978-b86ab7e2-498f-4160-aae1-58a6d541c8e3.png"> <img width="468" alt="image" src="https://user-images.githubusercontent.com/71892904/182123998-57d0ecab-9911-470e-b39a-797f2f0a3105.png">

 
EatX application have native support for Apple Dark mode. User can switch between light and dark mode in iOS or iPadOS setting for this application to adapt to this change.

g.	iPhone, iPad, and iPod supported with iOS version 15.5 or newer

-	iPhone 8 or newer

  <img width="223" alt="image" src="https://user-images.githubusercontent.com/71892904/182124130-deb94904-ce99-4c5d-b832-5c162c2d5a61.png"> <img width="223" alt="image" src="https://user-images.githubusercontent.com/71892904/182124147-595f2bb4-b0b1-4c2a-abe3-721c5e8232f0.png">

Figure 11: iPhone 8 EatX application

-	iPad Air (5th generation), iPad Pro (5th generation), iPad mini (6th generation), iPad (9th generation) or newer

 <img width="451" alt="image" src="https://user-images.githubusercontent.com/71892904/182124192-678d6a68-6326-4ab9-8275-891fa2705c12.png">

Figure 12: iPad portrait EatX application

 <img width="411" alt="image" src="https://user-images.githubusercontent.com/71892904/182124231-759818cb-abe8-47cd-987c-7475badf853c.png">

Figure 13: iPad horizontal EatX application

h.	Support dark mode from native Apple system:

3.	Additional screenshot

-	Order view from iPad Air

 <img width="441" alt="image" src="https://user-images.githubusercontent.com/71892904/182124208-840a7675-9ecd-4ccd-9a07-18f8aaefd1fd.png">

Figure 14: iPad showing pop up cart interface

-	Search View from iPad Air with the virtual keyboard

 <img width="411" alt="image" src="https://user-images.githubusercontent.com/71892904/182124241-9421296a-6eec-4976-8c37-4f534b0ef01e.png">

Figure 15: iPad search interface with the virtual keyboard

-	Filter view from iPad Air

 <img width="410" alt="image" src="https://user-images.githubusercontent.com/71892904/182124262-e84f2274-16fb-4a87-b843-75312d0b15b4.png">

Figure 16: iPad with filter interface

-	Order confirmation view from iPad Air

 <img width="423" alt="image" src="https://user-images.githubusercontent.com/71892904/182124341-99ee2db4-6e9b-4251-ad7e-363ae3a53e88.png">

Figure 17: iPad with order confirmation interface

-	Empty cart view from iPad Air

 <img width="416" alt="image" src="https://user-images.githubusercontent.com/71892904/182124357-a0c78ca0-c3fa-4d56-93e7-92499b51d4d4.png">

Figure 18: iPad empty cart view interface

-	Search view from iPhone SE with the virtual keyboard

 <img width="340" alt="image" src="https://user-images.githubusercontent.com/71892904/182124376-efa1a0c1-c1a1-4744-9fbf-81ae0e0851dd.png">

Figure 19: iPhone SE search view with the virtual keyboard

-	Filter view from iPhone SE

 <img width="335" alt="image" src="https://user-images.githubusercontent.com/71892904/182124401-be60e104-90ae-442a-aad1-0d1980545ebf.png">

Figure 20: iPhone SE with filter interface

-	Confirmation view from iPhone SE

 <img width="333" alt="image" src="https://user-images.githubusercontent.com/71892904/182124428-74577edd-79f3-4608-a377-45fa13d5643f.png">

Figure 21: iPhone SE with order confirmation interface

-	Application icon

   <img width="95" alt="image" src="https://user-images.githubusercontent.com/71892904/182124444-ecdc9f69-a594-4cc9-8a5e-4efa4688206c.png"> <img width="324" alt="image" src="https://user-images.githubusercontent.com/71892904/182124458-ed40fb18-94dd-4e05-91e6-7cf8744c1a4b.png">

Figure 22: EatX application icon from home screen and spotlight

-	Application demo:
o	YouTube: https://youtu.be/Cv_6SNMuDuU
o	GitHub: https://github.com/PhiThai1309/EatX

4.	Future development

Due to limited development time, many features will be pushed into the future development of the application. One of the main features that will be developed in the future is the ability to add the quantity of the. This means that there will be a counter asking how many amounts of the dish the user wishes to add to the card. Moreover, in addition to quantity, the cart summary will show the list of food by a group. Each food if they are in the cart as a single quantity will have the indication next to the name as “x1” and so on. This will create more friendliness towards the user end since the user does not need to manually calculate the total amount of the same dish.
Moreover, device orientation is limited to portrait for all iPhone models since when rotate horizontally, the screen height is small and with the current element position, the user can't read the information. In contrast, it does not apply to the iPad user given that they have more screens for more content. Support for portrait orientation for iPhone will be added in the future development of the application.
Additionally, a list view of the home page can be redesigned to have a more modern approach. Instead of a list view to display a list of food, it can be displayed as a card to embrace the visualization of the food instead of a small picture as in the current design. This follows the approach of the food detail view ensuring consistency throughout the application.
	Lastly, the application can have a recommendation dish that is updated every day depending on the current season or availability of the food. This can be useful to the user that is new to that restaurant if they have never visited before or can help with making the decision in a customer respective.

5.	Reference
[1]	“W5 - What’s happening this week?: iOS Development.” https://rmit.instructure.com/courses/104891/pages/w5-whats-happening-this-week?module_item_id=4179466 (accessed Jul. 30, 2022).
[2]	“Creamy Mushroom Tagliatelle - Savvy Bites.” https://savvybites.co.uk/creamy-mushroom-tagliatelle/ (accessed Jul. 30, 2022).
[3]	“The Original Pancake House: Menu - French Toast.” https://www.originalpancakehousecleveland.com/french_toast.html (accessed Jul. 30, 2022).
[4]	“Strawberry Surprise - Recipe from Price Chopper.” https://www.mypricechopper.com/fresh-dish/recipes/recipe?id=7991 (accessed Jul. 30, 2022).
[5]	“Porridge recipe | Jamie Oliver breakfast & brunch recipes.” https://www.jamieoliver.com/recipes/fruit-recipes/porridge-lots-of-ways/ (accessed Jul. 30, 2022).
[6]	“SwiftUI-iDine/menu.json at master · pd95/SwiftUI-iDine.” https://github.com/pd95/SwiftUI-iDine/blob/master/iDine/menu.json (accessed Jul. 30, 2022).
[7]	“MockUPhone.” https://mockuphone.com/device?type=ios#iphone13 (accessed Jul. 30, 2022).
 

