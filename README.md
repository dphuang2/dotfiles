<h3> VIM SETUP </h3> 
<ol>
    <li> Install vim, ConEmu, and mysgit </li>
    <li> Add "C:\Program Files (x86)\Vim\vim74" to Path system variable </li>
    <li> Install Vundle by cloning into %USERPROFILE%/vimfiles/bundle/Vundle.vim </li>
    https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows
    Gonna have to use this command (explained in link):
    <ul>
        <li>git clone https://github.com/gmarik/Vundle.vim.git %USERPROFILE%/vimfiles/bundle/Vundle.vim </li>
    </ul> 
    <li> Clone dotfiles from github </li>
    git clone https://github.com/dphuang2/dotfiles.git
    <li> Copy and paste dotfile into %USERPROFILE% directory </li>
    <li> Open ConEmu and import settings </li>
    <li> Run Vim from ConEmu and :PluginInstall! </li>
</ol>    


<h3> Rails Notes </h3>
<b>  Installation:  </b>
<ol>
    <li> Download RailsInstaller: http://railsinstaller.org/en </li> 
    <li> Open Git bash and run: curl http://installrails.com/update_rubygems.rb | ruby </li>
    <li>must "gem intall rails" to install rails</li>
    <li>bundler install: "gem install bundler" </li>
</ol>

<b> Notes </b>
<ul>
    <li> coffeescript doesn't work on windows so include this in Gemfile for every new rails project: gem 'coffee-script-source', '1.8.0' and run: bundle update coffee-script-source </li>
    <b> This is done to force coffeescript to older version that works for Windows </b> <br>
    Solution explained: http://stackoverflow.com/a/28331807
</ul>

<h3> IM Setup from Scratch on Windows 10 64 bit </h3>

<ol>
    <li> Download RailsInstaller (Ruby 2.2.4 version) </li>
    <li> Clone from github: https://github.com/berkmancenter/internet_monitor.git </li>
    <li> Gemfile specifies ruby version 2.1.6 so need to change to 2.2.4 </li>
    <li> Install PostgreSQL </li>
    <li> "gem install pg" </li>
    <li> add C:\Program Files\PostgreSQL\9.5\bin to Path system variable </li> 
    this is to allow command line PostgreSQL tasks
    <li> Create user: postgre w/ password: postgre </li>
    use pgadmin or command line
    <li> Run bundle</li> 
    <li> rake db:setup </li>
    <li> Run rails server </li>
</ol>

<b>Errors</b>
<ul>
    <del><b><li> config/database.yml is missing (because it is included in .gitignore) </li></b></del>
    <del>Solution: temporarily placed base database.yml file in there</del>
    <del><b><li> Please install the sqlite3 adapter: `gem install activerecord-sqlite3-adapter` (sqlite3 is not part of the bundle. Add it to Gemfile.) (LoadError) </li></b></del>
    <del>Solution: add "gem 'sqlite3'" to Gemfile and run "bundle install"</del>
    <del><b><li> When visiting localhost: Could not find table 'categories' error in app/controllers/application_controller.rb:8:in `load_groups' </li></b></del>
    <del><li> Install PostgreSQL </li></del> 
    <del><li> "gem install pg" </li></del> 
</ul>


<h3>Apachi-Nifi setup for Windows 10 64 bit</h3>

<ol>
   <li> Download apachi-nifi </li>
   <li> execute run-nifi in the bin folder </li>
   <li> open localhost:8080/nifi </li>
</ol>

<h3>Streamsets setup for Windows 10 64 bit </h3>
The only difference between Mac OS and Windows is that you would not have to use Vagrant (Linux box)
<ol>
    <li> Install Vagrant </li>
    <li> vagrant box add ubuntu/trusty64 </li>
    Important Note: MUST USE Ubuntu 14.04 or above <br>
    if there are problems adding the box, install C++ 2010 SP1 Reidistributable Package (x86): https://github.com/mitchellh/vagrant/issues/6852 
    <li> make folder to host VM (Ubuntu64) </li>
    <li> vagrant init ubuntu/trusty64 (inside of newly made folder) </li>
    <li> Download Vagrantfile from https://github.com/dphuang2/dotfiles </li>
    <li> replace new Vagrantfile made from init with downloaded Vagrantfile </li>
    <li> vagrant up (inside of folder) </li>
    <del> <li> edit Vagrantfile by uncommenting private-network line and changing ip to "55.55.55.5" </li> </del>
    <li> add C:\Program Files (x86)\Git\bin to path environment variables </li>
    This requires an install of git
    <li> vagrant ssh [to ssh into the virtual box] </li>
    <li> wget https://archives.streamsets.com/datacollector/1.4.0.0/tarball/streamsets-datacollector-all-1.4.0.0.tgz </li>
    this takes a while since Streamsets is very large
    <li> tar xvzf streamsets-datacollector-all-1.4.0.0.tgz </li>
    <del> <li> sudo apt-get install openjdk-7-jdk openjdk-7-jre </li> </del>
    <li> follow steps to install Oracle JDK 8 in the link below </li>
    https://www.digitalocean.com/community/tutorials/how-to-install-java-on-ubuntu-with-apt-get
    <li> sudo update-alternatives --config java and select Java 7 </li>
    above step is only needed in the case that multiple java versions are installed
    http://www.mkyong.com/java/java-unsupported-major-minor-version-51-0/ for explanation of last two steps
    <li> streamsets-datacollector-1.4.0.0/bin/streamsets dc </li>
    <li> navigate to "55.55.55.5:18630" in browser </li>
    <li> login with user: admin, pass: admin </li>
    important to note that you must use shared folder (/vagrant) to share files with streamsets
</ol>
