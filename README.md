# xat-www [![Build Status](https://travis-ci.org/iiegor/xat-www.svg)](https://travis-ci.org/iiegor/xat-www)
> The xat website

We're using Hapi as our framework. If you'd like to contribute to this project, please do!

## Application information

### Running the server
```sh
# install package deps
$ npm install

# copy environment-based config/secrets (don't forget to edit with your config)
$ cp .env.example .env

# run the server
$ npm run dev
```
**Note:** Running directly on the :80 port it's not a good idea, instead use something like [varnish-cache](https://www.varnish-cache.org/) (highly recommended).

### Code style
We're using semi-colons and comma-last.

## Authors
* **Iegor Azuaga** (<dextrackmedia@gmail.com>)
* **[npm/newww](https://github.com/npm/newww) authors**
