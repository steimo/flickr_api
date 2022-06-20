### Overview:

This is a simple photo widget that allows to display photos from Flickr feed by entering the user id. App fetches photos from Flickr by interacting with the Flickr API. For example, submitting someone else's ID in the form triggers `flickr.photos.search` method which returns a list of photos matching some criteria.

### Gems used:


- [Flickr](https://github.com/cyclotron3k/flickr) - a library to access the Flickr API.

- [Figaro](https://github.com/laserlemon/figaro) - to store the key in an environment variable.

