harp-nginx
==================

You don't need to use node to serve a harp site - you can just compile the files and use anything - `harp compile`

This is a container that has node and harp available, to compile and install the static site, that nginx serves.

On top of node and harp a few common gulp packages are included to provide a build pipeline.

You can use our container: `docker pull xorcode/gulp-harp-nginx`

Or you can build your own:

```
docker build -t your-name-here/gulp-harp-nginx .
docker push your-name-here/gulp-harp-nginx
```

After this - just add this Dockerfile to your Harp repo:

```
FROM xorcode/gulp-harp-nginx

WORKDIR /srv/www

ADD . /srv/www/
RUN harp compile

EXPOSE 80

CMD nginx
```

Push it to your docker server - and your server will use 4-6MB of RAM instead of 60MB.

To see an example working repo, [take a look here](https://github.com/octohost/harp).
