FROM xorcode/harp-nginx
RUN \
  npm install -g harp gulp gulp-shell gulp-cdnizer gulp-replace && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
