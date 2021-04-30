### Installation

Just run the docker file, using `make build` (should only be needed first time),
and `make run` to build the page.


OLD:
After cloning the repository and installing needed packages , you can see the site by running the following commands in 
terminal:

```sh
$ git clone git@github.com:ebadi/ChalmersSecurity.git
$ cd ChalmersSecurity
$ bundle install
$ bundle exec jekyll serve --config local_config.yml
$ bundle exec jekyll serve // for using _config.yml
```
Server address: http://127.0.0.1:4000/research/group/security/

### jekyll
If jeykell is not installed, you can install it using your package manager but if the version of jeykell is not 
compatible with this project you can [install it using RubyGems][jekyll-install].
```sh
$ sudo gem install nodejs
$ sudo apt-get install ruby-dev
$ sudo gem install jekyll
$ sudo gem install bundler
$ sudo gem install octopress
```
if you have a problem with old version of ruby (<2), you can check [this stackoverflow post][ruby2-install]

   [jekyll-install]: <https://jekyllrb.com/docs/installation/>
   [ruby2-install]: <http://stackoverflow.com/questions/16222738/how-do-i-install-ruby-2-0-0-correctly-on-ubuntu-12-04>
