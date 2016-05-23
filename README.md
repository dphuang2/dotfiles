<h3> VIM SETUP </h3> 
<ol>
    <li> Install vim, ConEmu, and mysgit </li>
    <li> Install Vundle by cloning into %USERPROFILE%/vimfiles/bundle/Vundle.vim </li>
    https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows
    Gonna have to use this command (also outlined in link):
    <ul>
        <li> Gonna have to git clone https://github.com/gmarik/Vundle.vim.git %USERPROFILE%/vimfiles/bundle/Vundle.vim </li>
    </ul> 
    <li> Clone dotfile from github </li>
    <li> Copy and paste dotfile into %USERPROFILE% directory </li>
    <li> Run Vim from ConEmu and :PluginInstall! </li>
</ol>    


<h3> Rails Notes </h3>

<ul>
    <li>must "gem intall rails" to install rails</li>
    <li>bundler install: "gem install bundler" </li>
</ul>

<h3> IM Setup </h3>

<ol>
    <li> Download RailsInstaller (Ruby 2.2.4 version) </li>
    <li> Clone from github: https://github.com/berkmancenter/internet_monitor.git </li>
    <li> Gemfile specifies ruby version 2.1.6 so need to change to 2.2.4 </li>
    <li> Run bundle install </li>
    <li> Run rails server </li>
    <ul>
        <li> config/database.yml is missing </li>
    </ul>
</ol>
