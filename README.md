# Nginx 1.26.2 build
## Setup nginx with SSL support

### 1. Download the source code

Open Terminal and create a directory to work in:

```
mkdir -p ~/nginx-src && cd ~/nginx-src
```

Download the latest nginx source release:

```
curl -OL https://nginx.org/download/nginx-1.26.2.tar.gz
tar -xvzf nginx-1.26.2.tar.gz && rm nginx-1.26.2.tar.gz
```

Download PCRE (Perl Compatible Regular Expressions) library:

```
curl -OL https://github.com/PCRE2Project/pcre2/releases/download/pcre2-10.44/pcre2-10.44.tar.gz
tar -xvzf pcre2-10.44.tar.gz && rm pcre2-10.44.tar.gz
```

For SSL support, download OpenSSL:

```
curl -OL https://github.com/openssl/openssl/releases/download/openssl-3.4.0/openssl-3.4.0.tar.gz
tar -xvzf openssl-3.4.0.tar.gz && rm openssl-3.4.0.tar.gz
```

### 2. Configure nginx for Compilation

Go into the nginx source directory:

```
cd nginx-1.26.2
```

Configure nginx to use the libraries you just downloaded (including SSL support):

```
./configure --with-pcre=../pcre2-10.44/ --with-openssl=../openssl-3.4.0/ --with-http_ssl_module
```

3. Compile and Install nginx

Build and install nginx:

```
sudo make && sudo make install
```

The default installation path is /usr/local/nginx. You may change this with --prefix=<path> in the configure step if you wish.

Add nginx binary to your PATH for convenience:

```
export PATH="/usr/local/nginx/sbin:$PATH"
```

4. Start nginx

Start the nginx server:

```
sudo /usr/local/nginx/sbin/nginx -c /path/to/your/nginx.conf
```

Open http://localhost/ in your browser. You should see the Welcome to nginx! page.

### 5. Basic Management

To stop nginx:

```
sudo /usr/local/nginx/sbin/nginx -s stop
```

To reload configuration:

```
sudo /usr/local/nginx/sbin/nginx -s reload
```
