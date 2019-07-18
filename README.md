Steve's No-Good-Very-Bad Course Website Jekyll Template
=======================================================

This repository contains a Jekyll template, patterned entirely off my no-good-very-bad Jekyll Template at [svmiller.com](http://svmiller.com), for organizing a course website. I should note that because I ganked it from my website template, there's a lot of empty tags in the template that make reference to things that don't appear in the main `.yml` file. In other words, they reference things that should be there but, because they're not there, ultimately won't interfere with how the site renders.


## Installation

This assumes that you have a working installation of Jekyll. If you don't, first visit [Jekyll's documentation](https://jekyllrb.com/docs/installation/) to learn how to. 

1. [Fork this repo](https://github.com/svmiller/course-website) and clone it locally.

```bash
cd ~/Sites/

git clone https://github.com/YOUR_USER_NAME/course-website.git

```

2. Create a new empty theme with Jekyll

```bash
cd ~/Sites/

jekyll new-theme ipa

             create ~/Sites/ipa/assets
             create ~/Sites/ipa/_layouts
             create ~/Sites/ipa/_includes
             create ~/Sites/ipa/_sass
             create ~/Sites/ipa/_layouts/page.html
             create ~/Sites/ipa/_layouts/post.html
             create ~/Sites/ipa/_layouts/default.html
             create ~/Sites/ipa/Gemfile
             create ~/Sites/ipa/ipa.gemspec
             create ~/Sites/ipa/README.md
             create ~/Sites/ipa/LICENSE.txt
         initialize ~/Sites/ipa/.git
             create ~/Sites/ipa/.gitignore
Your new Jekyll theme, ipa, is ready for you in ~/Sites/ipa! 
For help getting started, read ~/Sites/ipa/README.md. 


```

3. Open the ``ipa.gemspec`` file and edit it as follows:

```bash
  spec.summary	=	"WRITE A SHORT SUMMARY OF YOUR THEME"
  spec.homepage	=	"http://address.com"

### Update the following two version numbers as per what's on your system.
  spec.add_development_dependency "bundler", "~> 2.0.1"
  spec.add_development_dependency "rake", "~> 12.3.2"

``` 

4. Run ``bundle install`` inside ``~/Sites/ipa/``.  This should run successfully and install all the necessary gems.  It will also create a ``Gemfile`` and a ``Gemfile.lock`` inside your project.

5. Now we are ready to migrate necessary theme files from ``~/Sites/course-website/`` to ``~/Sites/ipa/``.  Copy the following files and folders.  If a folder already exists (e.g. ``_includes``), just copy files inside. If a file already exists, overwrite it.

```bash
_config.yml
_css/
_data/
_images/
_includes/
_layouts/
_posts/
_sass/
_site/
assets/
blog.md
CNAME
course-materials.md
feed.xml
index.html
lectures.md
LICENSE.txt
README.md
sitemap.xml
syllabus/
untitled-lecture/

```

6. Edit ``_config.yml`` to customize site details.  Then fire up ``jekyll serve``.  You may need to do ``bundle exec jekyll serve`` instead, if you have a separate Ruby installation for Jekyll's purposes.  The site template should be only at ``http://localhost:4000`` now. 

7. Follow the remaining directions below to fully customize your site.

Here are the things you should tweak to make it your own:

- `_config.yml`. Naturally. This should be familiar if you're accustomed to Jekyll. Do note, for convenience, that I made the `syllabus` field a full URL entry. You should also fill out the `githubdir` field since the goal is to make your course (and, by extension, the knowledge you propose to communicate) open source and reproducible on Github. Let us know where it is.
- `course-materials.md`: Fudge this to add in helpful information about your course (e.g. the book and whatever else you want to communicate).
- `index.html`: You won't need to edit much but, if you want your own lead image for your course website that's *not* from *Stand and Deliver* (I don't know why you would do this, but, hey, it's your class...), edit that Jekyll liquid tag I created that embeds images in my spiffy way. This should be intuitive. Just specify a relative path for the image you want to use, how wide you want it to be, and whatever caption you want to add to it.
- `_data/lectures.yml`: This uses YAML data to render Github and local links to lectures. This should be straightforward (see my example file) but [feel free to look at this tutorial](https://jekyllrb.com/docs/datafiles/) if you want to better understand what's happening here. You could also edit `lectures.md` if, for example, you render your lectures to HTML in lieu of PDF. I do PDF. Changing this isn't hard, though, and should be straightforward. Basically, change ".pdf" to ".html" as you see it and then, probably, find a nice icon for HTML on [Font Awesome](https://fontawesome.com/).
- `_includes/nav.html`: You won't have to tweak this, per se, but you may want to if, for example, you want to add a course blog. I don't do that, but I do prove a `blog.md` file. Head to [Font Awesome](https://fontawesome.com/) if you're looking for the perfect icon to go with it.
- `CNAME`: Adding a special domain or subdomain to your course website? Change it here. Is its own Github page on a special account you created on Github (but you're *not* using a special domain on top of that [[example](https://github.com/uw-csss-564)])? Delete it.

You can see a snapshot of what it looks like below. You can also try it out here: [http://course-website.svmiller.com/](http://course-website.svmiller.com/)

![Snapshot](_images/snapshot.png)

Feel free to contact me at svmille@clemson.edu. Send along some cheers too if you find it useful.
