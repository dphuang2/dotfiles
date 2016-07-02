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
