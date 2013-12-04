##93 Made Games App

This website was built as my final project for the [General Assemb.ly](https://generalassemb.ly/) - Back End Web Development Course. The site I have designed was designed to replace a friend of mine's [current website](http://www.93madegames.com.au/).

###What is 93 Made Games?
My friend is the Managing Director of the company 93 Made Games. It is a very small company that he uses to market and sell games that his company has made. These are traditional games i.e. board games / card games and not video games. Currently they have two products completed and available to purchase Viewpoint and it's standalone expansion Viewpoint Reflections.

###Project Aim
The aim of this project was to give my friend a visually improved website but more importantly was to deliver a non-static website. His current website is purely HTML, CSS and Javascript requiring him to FTP into his web server every time he wants to make any changes. I wanted to deliver a site where he can change almost all of the content as he needs to without any code changes with only the layout being constant.

####Key Features
General

* View a stylistic pleasing site that is clean and simplistic in its design.

Site Viewers

* View aritcles, games, stockists
* View company details (about us) and policies (legal)

Admin

* Admin login is authenticated which then permits all of the below actions:-
* Ability to create new articles, games, stockists
* Ability to change 'static' wording on site i.e. homepage, footer etc... (see Content Model)
* Apply rich text styling to content added to the site (see Kramdown below)

####Kramdown
It was highly important to allow Admin's to apply styling to all the content they add. However I am not a believer in having admins input raw HTML directly. Firstly, this requires knowledge of how to use HTML which is overly complex to implement simple stylying and requires too much code. Secondly, with raw HTML it is easier to create content that does not conform to the theme of the site as you can override pretty much any of the default styling.

An alternative would be to use a javascript form that generates the necessary HTML but this is beyond my level of front end coding knowledge but also I am a fan of minimalist, clean and simple solutions and for this reason Markdown appeals to me.

Kramdown meets these requirements and more! It allows users to input plain text and with very simplistic syntax style also style their content. The input is then rendered as HTML to display on the page. Kramdown is a ruby gem that uses Markdown syntax for styling but also extends this further.

One of the most powerful features I've discovered with Markdown is it actually allows you to attach id and class HTML tags to elements. This allows me (as the site admin) to create pre-defined formats in the css code for the site which can then be used by the Admin to format content in a specific way.

**Example:** Image With Caption, Image Scaling etc...

####Content Model
In line with allowing the Admins freedom to change all aspects of the site I wanted to implement a 'Content' model. 

This model will is designed to store all pieces of text in various areas (controllers / actions) across the site that is not necessarily associated with any model (I've termed this 'Static' content). This allows these areas to be modified by the Admin as needed from the Setup page.

However there is also the About page (About Us and Legal section) on the site that effectively displays content of the same nature where it is simply a number of pieces of styled text so I wanted to use the same model.

In both cases all that is required is a title and a body (to store the text). I also added content_type so you can specify where this content is to be used and displayed.

This was challenging, as while you can change the Title of Content in the About Page changing the Title of 'Static' Content will break the site, as it expects to find Content with that exact same name. So I had to implement this such that for 'Static' Content nothing can be changed except for the Body to prevent Admins from inadvertadly breaking the site.

###What is not delivered?
Due to time constraings these are the features I wanted to deliver but could not within the time available.

####Features Missing from Current Site

* Company Branding. New site needs much more in the way of logos / pictures / videos.
* Shop Front. Need to reimplement the pictures and paypal links.

####Features I wanted to add...

* Search functionality for Articles.
* Image uploading to amazon s3, display recent images as a thumbnail with url when creating/editing content so the images can be easily included using Kramdown for easy selection.
* Games show method should be tied to the game name (rather than just id). This should be used for linking.
* Games section should be sortable.
* Add Pagination to Articles.

Minor Changes:-

* Caption in Articles should not be visible if there is no caption.
* Add link to reset password from setup page
* Style forgot password
* Change field size for email and password