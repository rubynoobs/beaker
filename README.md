beaker
======

Framework for component searching across multiple suppliers. https://moqups.com/n8_fish/uN9F5hA3

![Imgur](http://i.imgur.com/TWgMxaX.png)


To Do
-----

- [ ] __Write rspec tests__
- [x] Component class ```belongs_to supplier```
- [ ] Supplier class < User ```has_many components```
    - [x] CSV Upload
    - [x] Editible Supplier Page
    - [ ] Only Supplier has access to create/edit/destroy their own components
- [ ] Admin class
- [ ] Searchable database by ```part_no```
- [ ] Tables can be sorted by clicking on table headers

Interested in Contributing?
---------------------------

- Join us at #rubynoobs on irc.freenode.net
- Visit our subreddit [r/rubynoobs](http://reddit.com/r/rubynoobs)
- Submit a pull request

Roles
-----

###User

A user lands at the homepage and searches for an alphanumeric part number.

The search result page's table is populated with any products that match the search term.

When a user clicks the part number he is directed to the product page displaying information regarding the product.

When a user clicks on the supplier's name he is directed to the supplier's public page.

When a user clicks on his profile nav icon he is directed to his profile page, where he can change his password & email, as well as view his search history.

###Supplier 

A supplier lands at the homepage and clicks 'supplier login' and either logins in or registers as a new supplier.

Once successfully logged in the supplier is redirected to their control panel. 

The supplier's control panel allows for the setting of contact information, uploading of inventory (csv only to begin?), as well as viewing comments and ratings attached to their account.

###Admin 

An admin logins to '/admin' and enters valid credentials.

He is then redirected to the admin control panel which has the following capabilities: 

 - Create/edit/destroy users
 - Create/edit/destroy components
 - Create/edit/destroy suppliers
 - Assign components to suppliers
