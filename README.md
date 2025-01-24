# Boilerplate Project Setup
## This project is pre-configured with the following:

- **Tailwind CSS:** Fully set up for styling your application.
- **View Components:** Includes some reusable components.
  _If you decide to remove them, ensure you also delete any related views, JavaScript controllers, and associated files._
- **Lookbook:** Used for previewing and organizing View Components.
  _If you don't need it, remove Lookbook and its related route._
- **Important:**
  There are existing migration files. **Do NOT** delete them unless you are sure you want to reset the database structure.
- **Stripe:** Pre-configured for Stripe integration.
    To use Stripe, add your API key to your credentials as follows:

    ```
      stripe:
        api_key: "your_api_key_here"
    ```

    This setup assumes you have the following configuration in config/initializers/stripe.rb:
    ```
    Stripe.api_key = Rails.application.credentials.dig(:stripe, :api_key)
    ```

    If you prefer a different approach, feel free to modify the initializer to suit your needs.


## Before You Start
Run the following commands to set up the project:

1. Drop any existing database (if applicable):
Create a fresh database:
    ```
    rails db:drop
    rails db:create
    ```

2. Replace `biolerplate` with your project name (e.g my-app) 
3. Raname 'BoilerPlate' Module name in `config/application.rb` with your app name (e.g MyApp) 

4. Install necessary dependencies:
    ```
    bundle install
    yarn install
    ```

5. Set up Active Storage (for file uploads) and Action Text (for rich text):
    ```
    bin/rails active_storage:install
    bin/rails action_text:install
    ```

6. Run database migrations:
    ```
    bin/rails db:migrate
    ```

7. Start the Development Server
    To start the server and compile Tailwind assets, run:
    ```
    bin/dev
    ```

## Notes
This boilerplate is designed to save time during project setup.
Remove or modify components and configurations based on your project's needs.

If you need help or clarification, feel free to reach out to polina.stamenova@gmail.com
