# TODO App 
  This app is built using Ruby on Rails 7 and Sqlite3.
  Runnning this app requires:

  * Ruby Sdk installed in the system
  * An IDE for running the code (preferrably RubyMine)
  * After opening the code in the IDE, enter the command 'rails s' in the terminal to start the Rails server
  * After the app execution, in the browser, Authentication Page displays up
  * After authentication, Projects lists page is dispalyed, where the project can be created
  * Each project has its associated Todos in a seperate page

    #Tables created

    * Project table : id, title, created_at, updated_at, user_id
    * Todo table : id, description, status, created_at, updated_at, project_id
   
   CRUD operations for both Project and Todo are working perfectly fine.

   Output of the Project view page is attached below. 
   

  ![Screenshot (767)](https://github.com/f4rahdw/todo-app/assets/107203294/a36054c8-ac2e-4299-b24a-de796f8920b1)
