noah = User.create(name: 'Noah', username: 'Noah', password: 'blah')

budget1 = Budget.create(user_id: 1, title: 'Main Budget', value: 4000, period_in_days: 7)
budget2 = Budget.create(user_id: 1, title: 'Secondary Budget', value: 3500, period_in_days: 7)


budget_category1 = BudgetCategory.create(budget_id: 1, title: 'Misc')
budget_category2 = BudgetCategory.create(budget_id: 1, title: 'Fixed Spending')
budget_category3 = BudgetCategory.create(budget_id: 1, title: 'Food')
budget_category4 = BudgetCategory.create(budget_id: 1, title: 'Ammo')

budget_category5 = BudgetCategory.create(budget_id: 2, title: 'Colors')
budget_category6 = BudgetCategory.create(budget_id: 2, title: 'Magazines')
budget_category7 = BudgetCategory.create(budget_id: 2, title: 'Tomatoes')
budget_category8 = BudgetCategory.create(budget_id: 2, title: 'Feelings')

transaction1 = Transaction.create(budget_category_id: 1, description: 'gas', value: 20)
transaction2 = Transaction.create(budget_category_id: 1, description: 'electric', value: 12)
transaction3 = Transaction.create(budget_category_id: 1, description: 'HBO', value: 15)
transaction4 = Transaction.create(budget_category_id: 1, description: 'jammers', value: 8)
transaction5 = Transaction.create(budget_category_id: 1, description: 'bike', value: 9)
transaction6 = Transaction.create(budget_category_id: 2, description: 'rent', value: 4)
transaction7 = Transaction.create(budget_category_id: 2, description: 'cable', value: 22)
transaction8 = Transaction.create(budget_category_id: 2, description: 'school', value: 13)
transaction9 = Transaction.create(budget_category_id: 3, description: 'bacon', value: 16)
transaction10 = Transaction.create(budget_category_id: 3, description: 'poptarts', value: 19)
transaction11 = Transaction.create(budget_category_id: 3, description: 'jam', value: 1)
transaction12 = Transaction.create(budget_category_id: 1, description: 'minez', value: 2)
transaction13 = Transaction.create(budget_category_id: 4, description: 'jamaica', value: 2)

transaction14 = Transaction.create(budget_category_id: 5, description: 'groceries', value: 20)
transaction15 = Transaction.create(budget_category_id: 5, description: 'xbox', value: 12)
transaction16 = Transaction.create(budget_category_id: 5, description: 'marbles', value: 15)
transaction17 = Transaction.create(budget_category_id: 5, description: 'fake ivory', value: 8)
transaction18 = Transaction.create(budget_category_id: 5, description: 'gumdrops', value: 9)
transaction19 = Transaction.create(budget_category_id: 6, description: 'earlobes', value: 4)
transaction20 = Transaction.create(budget_category_id: 6, description: 'dominoes', value: 22)
transaction21 = Transaction.create(budget_category_id: 6, description: 'pizza', value: 13)
transaction22 = Transaction.create(budget_category_id: 7, description: 'croissants', value: 16)
transaction23 = Transaction.create(budget_category_id: 7, description: 'country', value: 19)
transaction24 = Transaction.create(budget_category_id: 7, description: 'tea', value: 1)
transaction25 = Transaction.create(budget_category_id: 5, description: 'jimenez', value: 2)
transaction26 = Transaction.create(budget_category_id: 8, description: 'dalmatian', value: 2)
