# EatX iOS Application
COSC2659 iOS Development
Assignment 1
Lecturer: Mr. Tom Huynh

<p align="center">
  <img width="250" alt="image" src="https://user-images.githubusercontent.com/71892904/182123394-8aa9ab3b-66c1-416a-977a-cea8f8e0136f.png">
  
  <img width="250" alt="image" src="https://user-images.githubusercontent.com/71892904/182123492-d8501999-baad-4feb-aaa4-abe497a1f7e7.png"> 
  
  <img width="250" alt="image" src="https://user-images.githubusercontent.com/71892904/182123808-fdb5a6d9-ad2c-4d10-8fda-a3c276382f2e.png">

</p>

## Table of contents

- [Overview](#overview)
- [Built with](#built-with)
- [Functionalities](#Functionalities)
- [Future development](#Future-development)
- [Application demo](#Application-demo)
- [Author](#Author)
- [Acknowledgments](#acknowledgments)


## Overview

There are many foods application that exist in the world: food delivery applications, restaurant ordering, and more. Many of them follow the traditional way of designing the application in an outdated design language, and many of them don’t have a minimalistic design and are user-friendly. Since then, the sparked of an idea to design a food ordering application that embraces user-friendliness, minimalistic and intuitive design that allows the user to focus on more of what matters, instead of trying to figure out how to use it. 
Introducing EatX, an application that is designed for restaurants to replace traditional menus and bring technology into customer services. No need to wait for a waitress to come to you in order to order your food. No need to be pushed by a waitress when you are taking a long time to figure out what to order. With EatX, you can order your meal at peace.

## Built with
<p align="center">
  <img src="https://skillicons.dev/icons?i=swift" />
  <img src="https://skillicons.dev/icons?i=figma">
</p>

- Swift, SwiftUI
- XCode
- Github & Git
- Figma

### Functionalities

#### Tap to expand
<p align="center">
  <img width="204" alt="image" src="https://user-images.githubusercontent.com/71892904/182123565-9ca800b3-aaf8-4b53-85fc-0e5d44a3e877.png"> 
  <img width="203" alt="image" src="https://user-images.githubusercontent.com/71892904/182123584-01fe0b9a-383c-4e97-9670-8e3190b223d5.png">
</p>
Adding the ability to hide unnecessary information is one way to clean up the user interface. When needed to read the full text, the user is prompted with a “more…” button with the functionality to unwrap the text, expanding to its full length.

#### Add to cart
<p align="center">
  <img width="200" alt="image" src="https://user-images.githubusercontent.com/71892904/182123650-d50cc979-bc5c-4637-b720-f8a5cc4712e2.png"/>
</p>

The most important function is the capability to add the item to the cart. It enables the user to put the food into the cart in order to proceed to the next step.
The “Add to cart” button will be always present at the bottom of the screen whenever which iPhone or iPad you are on brings forth user friendliness without the need to search for the button if they are out of view.
After pressing the button “Add to cart”, the system will pop up with a notification to confirm with the user that their chosen item has been added to the cart.

#### Search food list
<p align="center">
  <img width="222" alt="image" src="https://user-images.githubusercontent.com/71892904/182123700-51db0f33-4aa6-4c52-a74d-f34b3591d2ca.png"> 
  <img width="222" alt="image" src="https://user-images.githubusercontent.com/71892904/182123712-5d89af5d-440f-4d3f-ba13-3b2eb183a34d.png">
  <img width="222" alt="image" src="https://user-images.githubusercontent.com/71892904/182123729-d2dbc42f-618d-4fe3-9534-1f6597f4564b.png">
</p>
  
One of the best abilities offers by the application is to be able to search for a specific food rather than the traditional menu that the user needs to read the whole menu in order to find their preferred food. 
The search bar will be above the list and hidden by default. Users need to scroll above the list and pull it down one more time for the search bar to appear.
 
<p align="center">
 
</p>

#### Filter food list

<p align="center">
<img width="222" alt="image" src="https://user-images.githubusercontent.com/71892904/182123757-76030592-7f4d-4a0f-adca-0ff9c68aeb25.png">
</p>
To bring more convenience to the user experience. Users can now filter the list by the food type such as Breakfast, dessert, and more. By clicking on a type, the list will change dynamically and show only the result of the food-related to that type.
Moreover, users can use filters alongside with search to find a food with a specific type bringing more usability to the application.

#### Check out

<p align="center">
 <img width="222" alt="image" src="https://user-images.githubusercontent.com/71892904/182123808-fdb5a6d9-ad2c-4d10-8fda-a3c276382f2e.png"> 
 <img width="222" alt="image" src="https://user-images.githubusercontent.com/71892904/182123821-6b01a136-09b2-44e0-a197-245bd9b8ab50.png">
 <img width="222" alt="image" src="https://user-images.githubusercontent.com/71892904/182123869-93e7caa0-0222-4ae5-9289-596185c6d86b.png">
</p>

Extended with the add-to-card function, the application will present the user with a summary of their cart. While reviewing, if users want to add more items to the card, they can do so by swiping down to dismiss the pop-up view or clicking on the “dismiss” button. This function will temporarily close the popup view and not proceed to order the user food’s card.  By only clicking on the “Confirm order!” button, the application will create an order and clear out the cart for the user.
This interface will check for the user cart. If there is no item in the user cart, the application will show this screen to the user prompting them with the information “Your cart is empty”.

#### Support iOS, iPadOS dark mode
<p align="center">
 <img width="238" alt="image" src="https://user-images.githubusercontent.com/71892904/182123978-b86ab7e2-498f-4160-aae1-58a6d541c8e3.png"> 
 <img width="468" alt="image" src="https://user-images.githubusercontent.com/71892904/182123998-57d0ecab-9911-470e-b39a-797f2f0a3105.png">
</p>
 
EatX application have native support for Apple Dark mode. User can switch between light and dark mode in iOS or iPadOS setting for this application to adapt to this change.

#### iPhone, iPad, and iPod supported with iOS version 15.5 or newer

<p align="center">
  <img width="223" alt="image" src="https://user-images.githubusercontent.com/71892904/182124130-deb94904-ce99-4c5d-b832-5c162c2d5a61.png"> <img width="223" alt="image" src="https://user-images.githubusercontent.com/71892904/182124147-595f2bb4-b0b1-4c2a-abe3-721c5e8232f0.png">

 <img width="411" alt="image" src="https://user-images.githubusercontent.com/71892904/182124231-759818cb-abe8-47cd-987c-7475badf853c.png">
</p>

### Future development
Due to limited development time, many features will be pushed into the future development of the application. One of the main features that will be developed in the future is the ability to add the quantity of the. This means that there will be a counter asking how many amounts of the dish the user wishes to add to the card. Moreover, in addition to quantity, the cart summary will show the list of food by a group. Each food if they are in the cart as a single quantity will have the indication next to the name as “x1” and so on. This will create more friendliness towards the user end since the user does not need to manually calculate the total amount of the same dish.
Moreover, device orientation is limited to portrait for all iPhone models since when rotate horizontally, the screen height is small and with the current element position, the user can't read the information. In contrast, it does not apply to the iPad user given that they have more screens for more content. Support for portrait orientation for iPhone will be added in the future development of the application.
Additionally, a list view of the home page can be redesigned to have a more modern approach. Instead of a list view to display a list of food, it can be displayed as a card to embrace the visualization of the food instead of a small picture as in the current design. This follows the approach of the food detail view ensuring consistency throughout the application.
	Lastly, the application can have a recommendation dish that is updated every day depending on the current season or availability of the food. This can be useful to the user that is new to that restaurant if they have never visited before or can help with making the decision in a customer respective.


## Application demo:
- YouTube: https://youtu.be/Cv_6SNMuDuU
- GitHub: https://github.com/PhiThai1309/EatX

## Author
- Thai Manh Phi (s3878070): Total contribution: 100%

## Acknowledgments
Details in code files

<p>
[1]“W5 - What’s happening this week?: iOS Development.” https://rmit.instructure.com/courses/104891/pages/w5-whats-happening-this-week?module_item_id=4179466 (accessed Jul. 30, 2022).
</p>
<p>
[2]“Creamy Mushroom Tagliatelle - Savvy Bites.” https://savvybites.co.uk/creamy-mushroom-tagliatelle/ (accessed Jul. 30, 2022).
</p>
<p>
[3]“The Original Pancake House: Menu - French Toast.” https://www.originalpancakehousecleveland.com/french_toast.html (accessed Jul. 30, 2022).
</p>
<p>
[4]“Strawberry Surprise - Recipe from Price Chopper.” https://www.mypricechopper.com/fresh-dish/recipes/recipe?id=7991 (accessed Jul. 30, 2022).
</p>
<p>
[5]“Porridge recipe | Jamie Oliver breakfast & brunch recipes.” https://www.jamieoliver.com/recipes/fruit-recipes/porridge-lots-of-ways/ (accessed Jul. 30, 2022).
</p>
<p>
[6]“SwiftUI-iDine/menu.json at master · pd95/SwiftUI-iDine.” https://github.com/pd95/SwiftUI-iDine/blob/master/iDine/menu.json (accessed Jul. 30, 2022).
</p>
<p>
[7]“MockUPhone.” https://mockuphone.com/device?type=ios#iphone13 (accessed Jul. 30, 2022).
</p>
