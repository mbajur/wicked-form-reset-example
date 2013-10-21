wicked-form-reset-example
=========================

1. `bundle install`
2. `rake db:migrate`
3. `rake db:seed`
4. `rails s`
5. Go to **http://localhost:3000/users/1/edit**
6. Make form submission to fail (by providing empty or text input in `value` fields
7. Observe how their values are beeing reset to original values
