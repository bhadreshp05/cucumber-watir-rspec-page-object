Feature: Adopting puppies
	
	As a puppy lover
	I want to adopt puppies
	So they can chew my furniture

Background:
	Given I am on the puppy adoption site

Scenario Outline: Adopting one puppy
	When I click the View Details button
	And I click the Adopt Me button
	And I click the Complete the Adoption button
	And I enter "<name>" in the name field
	And I enter "<address>" in the address field
	And I enter "<email>" in the email field
	And I enter "<pay_type>" from the pay with dropdown
	And I click the Place Order Button
	Then I should see "Thank you for adopting a puppy!"

Examples:
	| name 	 	| address 		| email 			| pay_type 			|
	| Cheezy  	| 123 main st 	| chezz@gmail.com 	| Credit card 		|
	| Bhadresh  | 155 main st 	| chezz@gmail.com 	| Check 			|
	| Niraj 	| 23 main st 	| chezz@gmail.com 	| Purchase order 	|

Scenario: Adopting two puppies
	When I click the first View Details button
	And I click the Adopt Me button
	And I click the Adopt Another Puppy button
	And I click the second View Details button
	And I click the Adopt Me button
	And I click the Complete the Adoption button
	And I enter "Bhadresh" in the name field
	And I enter "123 main street" in the address field
	And I enter "bb@cc.com" in the email field
	And I enter "Credit card" from the pay with dropdown
	And I click the Place Order Button
	Then I should see "Thank you for adopting a puppy!"


Scenario: Validate cart with one puppy
	When I click the first View Details button
	And I click the Adopt Me button
	Then I should see "Brook" as the name for line item 1
	And I should see "$34.95" as the subtotal for line item 1
	And I should see "$34.95" as the cart total

Scenario: Validate cart with two puppies
	When I click the first View Details button
	And I click the Adopt Me button
	And I click the Adopt Another Puppy button
	And I click the second View Details button
	And I click the Adopt Me button
	Then I should see "Brook" as the name for line item 1
	And I should see "$34.95" as the subtotal for line item 1
	And I should see "Hanna" as the name for line item 2
	And I should see "$22.99" as the subtotal for line item 2
	And I should see "$57.94" as the cart total





