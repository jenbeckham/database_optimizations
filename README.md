# Database Optimizations

## Results


## Normal Mode

* Running `rake db:seed` without indices: 1392.24 s
* Load index page without indices: 420000ms
* Running migration to add indices: 2.54 s
* Load index page with indices:
* Percent improvement in runtime after indices: 500% (pretty sure I might have done my recording incorrectly)



* Examine the code that is run when the root path loads.  Modify the commands which access the database to make them more efficient.
* Calculate your percent improvement in runtime.
* Once you have optimized your code as much as you think you can, drop the database, run `rake db:migrate`, and then time how long it takes to run `rake db:seed`.  Was there an improvement or a worsening of runtime?  By what percent and why?
* Which is faster: (a) running `rake db:seed` without indices and then running a migration to add indices, or (b) adding indices during your initial `rake db:migrate`, then running `rake db:seed`?

You've done a good job of analyzing runtime, but now take a look at storage space:

* Record the size of your database (in bytes).
* Record the size of your development log.
* Give at least one method (feel free to Google) for reducing the size of one of these, yet keeping your data intact.
* Do you think that this is smaller, about right, or larger than the size of databases you'll be working with in your career?

## Hard Mode

This data structure has a number of tables connected with a series of one-to-many relationships between them.  A more advanced way to improve efficiency would be to cache the id of the upper-most (ancestor) table's id in a field in the lower-most (descendant) table.  To accomplish this, do the following:

* Write a migration to add this cached foreign key.
* Write callbacks to maintain this foreign key appropriately.  Hint: you will need more than one.
* Modify the report to use this new cached field instead of the actual id stored in the ancestor table.
* Measure the improvement in runtime.
