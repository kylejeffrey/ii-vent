# 🔊 ii-vent

A good event is an organized event!

ii-vent streamlines the management of music events by bringing all those involved together, in one place and providing them with all the organizational tools and relevant information they need to make their next event a success.


![Landing : Home Page](https://user-images.githubusercontent.com/76161172/188619526-5d9cd3c2-7180-44fc-bcd3-6ed774373079.png)
<br>
App home: https://www.ii-vent.live/
   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Cloudinary](https://cloudinary.com/) - Image / File Hosting
- [Figma](https://www.figma.com) — Prototyping

## Team Members
- [Kyle Jeffrey](https://www.linkedin.com/in/kyle-jeffrey/)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License
