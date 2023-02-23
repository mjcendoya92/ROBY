Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
# GETTING STARTED
In one terminal:

  `rail s`

In another terminal:

  `yarn install`

  `yarn build --watch`

# TROUBLESHOOTING
## Cloudinary
  Sometimes you might get the cloud_name not defined or something similar.

  Check that you have created in your root folder a file called .env

  In this file, add the following
  `CLOUDINARY_URL=cloudinary://my_key:my_secret@my_cloud_name`

  You can find the API information on your dashboard after you login into your account (also see website for help https://cloudinary.com/documentation/rails_integration#setting_the_cloudinary_url_environment_variable)
