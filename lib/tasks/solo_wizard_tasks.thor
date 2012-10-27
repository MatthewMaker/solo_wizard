require File.expand_path("config/environment.rb")

class SoloWizardTasks < Thor

  desc "clean_all_tables", "Empty out all of the tables"
  def clean_all_tables
    SoloistScript.destroy_all
    Recipe.destroy_all
    RecipeGroup.destroy_all
  end

  desc "create_pivotal_workstation_recipes", "Create the initial set of recipes from pivotal workstation"
  def create_pivotal_workstation_recipes
    group01 = create_pivotal_workstation_recipe_group("Development Stack", 1)
    group02 = create_pivotal_workstation_recipe_group("Databases", 2)
    group03 = create_pivotal_workstation_recipe_group("General Software", 6)
    group04 = create_pivotal_workstation_recipe_group("OS-X Settings", 7, "Configuring your OS-X with some helpful settings")
    group05 = create_pivotal_workstation_recipe_group(".bash_profile", 8)
    group06 = create_pivotal_workstation_recipe_group("Command Line Tools", 3)
    group07 = create_pivotal_workstation_recipe_group("Source Control", 4)
    group08 = create_pivotal_workstation_recipe_group("Text Editors", 5)
    group09 = create_pivotal_workstation_recipe_group("Etc", 9)
    group10 = create_pivotal_workstation_recipe_group("Pivotal Workstation Meta", 10, "Each 'Meta' recipe is a collection of other recipes")

    create_pivotal_workstation_recipe("ack", group06, true, "Ack is a powerful alternative to grep(regular expression search) for programmers. It is faster than grep.")
    create_pivotal_workstation_recipe("active_corners", group04, false, "This recipe relaunches dock with corner values with either one of desktop,dashboard,mission control,application windows,launchpad,start screen saver, disable screen saver, put display to sleep.")
    create_pivotal_workstation_recipe("activemq", group01, false, "Apache ActiveMQ is the most popular and powerful open source messaging and Integration Patterns server. It supports many Cross Language Clients and Protocols and many advanced features while fully supporting JMS 1.1 and J2EE 1.4.")
    create_pivotal_workstation_recipe("add_ops_user", group09, false, "This recipe adds a new 'ops' user and adds it to kernal and creates a home directory for the same user and adds it a admin user.")
    create_pivotal_workstation_recipe("ag", group06, false, "Ag is similar to Ack,searches through code, but faster than Ack, which in turn is faster than grep.")
    create_pivotal_workstation_recipe("alfred", group03, false)
    create_pivotal_workstation_recipe("bash_path_order", group05, true, "It appends '/usr/local/bin:' before ENV['PATH']. It also opens every file in '/etc/paths/' location and updates the first line with '/usr/local/bin\\n' and removes any occurrences of '/usr/local/bin\\n' thereafter.")
    create_pivotal_workstation_recipe("bash_profile-aliases", group05, true, "Adds some helpful bash aliases: 'll' for the 'ls -lhA' command.  And adds color=auto to grep command")
    create_pivotal_workstation_recipe("bash_profile-arch_flags", group05, false, "This recipe creates an environment variable ARCHFLAGS and sets value '-arch x86_64' for it.")
    create_pivotal_workstation_recipe("bash_profile-better_history", group05, true, "This recipe sets history control for bash and sets to ignore duplicates, sets size for history as 10000 and also enables to append data to the history file rather than overwriting.")
    create_pivotal_workstation_recipe("bash_profile-ctrl-o", group05, true, "Go back to a command in history and press CTRL-O instead of RETURN. This will execute the command and bring up the next command in the history file. Press CTRL-O again to enter this command and bring up the next one. This recipe enables CTRL-O.")
    create_pivotal_workstation_recipe("bash_profile-ctrl-s", group05, false, "This recipe disables start/stop  output control and frees up CTRL-S for bash history forward searches.")
    create_pivotal_workstation_recipe("bash_profile-git_completion", group05, true, "This recipe installs git-core and bash-completion.  bash-completion extends bash's standard completion behavior to achieve complex lines with just a few keystrokes. This recipe adds completion for git commands.")
    create_pivotal_workstation_recipe("bash_profile-lang_en", group05, false, "This recipe sets the language and locale to US English and encoding to UTF-8.")
    create_pivotal_workstation_recipe("bash_profile-no_sudo_gem_install", group05, true, "This recipe raises error whenever 'sudo gem' command is used to install the gem.")
    create_pivotal_workstation_recipe("bash_profile-ps1", group05, true, "The appearance of the prompt in a shell is governed by the shell variable PS1. This recipe can change the default value for PS1.")
    create_pivotal_workstation_recipe("bash_profile-ree_settings", group05, false, "Tuning settings for REE (Ruby Enterprise Edition) concerning memory and heap slots")
    create_pivotal_workstation_recipe("ca_certs_to_match_heroku", group09, false, "Iterates through every file in '/usr/lib/ssl', ''/usr/lib/ssl/certs/' and sets the current user as owner. This recipe also copies the '/usr/lib/ssl/certs/ca-certificates.crt' file from cookbook as 'cacert.pem' in read-only mode.")
    create_pivotal_workstation_recipe("ccmenu", group03, true, "CCMenu displays the project status of CruiseControl continuous integration servers as an item in the Mac OS X menu bar.")
    create_pivotal_workstation_recipe("chrome", group03, true, "Google Chrome is a browser that combines a minimal design with sophisticated technology to make the web faster, safer, and easier.")
    create_pivotal_workstation_recipe("create_var_chef_cache", group09, true, "This recipe creates a file cache path directory and makes 'root' as its owner.")
    create_pivotal_workstation_recipe("default_editor", group09, true, "This recipe sets TextMate to be the default editor for .xml, .rb, .erb, .plain-text, .yml, .yaml")
    create_pivotal_workstation_recipe("defaults_fast_key_repeat_rate", group04, true, "This recipe sets KeyRepeat to 2 and InitialKeyRepeat to 15 in global preferences for the user")
    create_pivotal_workstation_recipe("disable_front_row", group04, false, "Front Row was a media center software application for Apple's Macintosh computers and Apple TV for navigating and viewing video, photos, podcasts, and music from a computer, optical disc, or the Internet through a 10-foot user interface (similar to Windows Media Center and Boxee). This recipe disables Front Row software.")
    create_pivotal_workstation_recipe("dock_preferences", group04, false, "This recipe sets the dock preferences as left orientated and auto hide option to true as default.")
    create_pivotal_workstation_recipe("dropbox", group03, true, "Dropbox is a free service that lets you bring your photos, docs, and videos anywhere and share them easily.")
    create_pivotal_workstation_recipe("ec2_api_tools", group06, false, "The EC2 API tools serve as the client interface to the Amazon EC2 web service. This recipe installs EC2 API tools on Mac OS X and includes the 'ec2_tools' action from the bash profile.")
    create_pivotal_workstation_recipe("enable_assistive_devices", group04, true, "This recipe turns on 'Assistive devices' from the system preferences.")
    create_pivotal_workstation_recipe("erlang", group01, false)
    create_pivotal_workstation_recipe("evernote", group03, false)
    create_pivotal_workstation_recipe("finder_display_full_path", group04, false, "The Finder in OS X Lion provides access to files and folders. This recipe sets finder to show full path in title bar.")
    create_pivotal_workstation_recipe("firefox", group03, true, "Mozilla Firefox is a free and open source web browser developed for Microsoft Windows, Mac OS X, and Linux coordinated by Mozilla Corporation and Mozilla Foundation.")
    create_pivotal_workstation_recipe("flycut", group03, true, "Flycut is a clipboard manager for Mac systems.")
    create_pivotal_workstation_recipe("freeruler", group03, false, "Free Ruler is a free screen ruler for Mac OS X.")
    create_pivotal_workstation_recipe("function_keys", group04, true, "This recipe maps the function key action to default function key actions to the OS.")
    create_pivotal_workstation_recipe("gem_no_rdoc_no_ri", group09, true, "This recipe sets the preference for installing a gem package without rdoc and ri.")
    create_pivotal_workstation_recipe("git", group07, true, "Git is a distributed revision control and source code management system with an emphasis on speed.")
    create_pivotal_workstation_recipe("git_config_global_defaults", group07, true, "This recipe sets a global git ignore, aliases (st for status, di for diff, co for checkout, ci for commit, br for branch, sta for stash, llog for log --date=local), no warning for whitespace, colors, and also branch auto setup merge as true.")
    create_pivotal_workstation_recipe("git_projects", group07, false, "This recipe clones all the git projects to workspace of the current user.")
    create_pivotal_workstation_recipe("git_scripts", group07, true, "This recipe downloads git_scripts to '/usr/local/bin' of current user.")
    create_pivotal_workstation_recipe("github_for_mac", group07, true, "Github for Mac is a software to make code sharing easy with github.")
    create_pivotal_workstation_recipe("github_ssh_keys", group07, false, "This recipe creates SSH keys and adds 'github.com' to the list of known hosts if not added already. It also tries to add the created SSH keys to the github.com of possible.")
    create_pivotal_workstation_recipe("gitx", group07, true, "GitX is a git GUI made for Mac OS X. It currently features a history viewer much like gitk and a commit GUI like git gui.")
    create_pivotal_workstation_recipe("global_environment_variables", group09, true, "This recipe sets global environment path to include /usr/local/bin, /usr/bin, /bin, /usr/sbin, /sbin, and /usr/X11/bin")
    create_pivotal_workstation_recipe("google_chrome_prevent_updates", group09, false, "This recipe prevent Chrome from updating by preventing writability of update directory.")
    create_pivotal_workstation_recipe("grid", group03, false, "Grid is a software which allows networked computers to contribute to a single task.")
    create_pivotal_workstation_recipe("homebrew", group06, true, "Homebrew is a package management system that simplifies the installation of software on the Mac OS X operating system.")
    create_pivotal_workstation_recipe("imagemagick", group01, true, "ImageMagick is an open source software suite for displaying, converting, and editing image files. It can read and write over 100 image file formats.")
    create_pivotal_workstation_recipe("increase_shared_memory", group09, true, "SHMMAX and SHMALL are two key shared memory parameters that directly impact's the way by which an SGA(Systm Global Area) is created. This recipe sets shmall to 65536 bytes and shmmax to 16777216 bytes")
    create_pivotal_workstation_recipe("input_on_login", group04, false, "This recipe sets preferences to show input menu on the login screen.")
    create_pivotal_workstation_recipe("inputrc", group09, true, "This recipe enables to edit the default keybindings by editing inputrc file.")
    create_pivotal_workstation_recipe("intellij_community_edition", group08, false, "IntelliJ IDEA is a commercial Java IDE by JetBrains.")
    create_pivotal_workstation_recipe("intellij_ultimate_edition", group08, false, "IntelliJ IDEA is a commercial Java IDE by JetBrains.")
    create_pivotal_workstation_recipe("iterm2", group06, true, "iTerm2 is a replacement for Terminal and the successor to iTerm.")
    create_pivotal_workstation_recipe("java", group01, true, "Java is a programming language which derives much of its syntax from C and C++ but has a simpler object model and fewer low-level facilities than either C or C++.")
    create_pivotal_workstation_recipe("joe", group08, false, "Joe is an easy to use command line editor for Mac OS X.")
    create_pivotal_workstation_recipe("jumpcut", group06, false, "Jumpcut is an application that provides 'clipboard buffering' that is, access to text that you've cut or copied, even if you've subsequently cut or copied something else. The goal of Jumpcut's interface is to provide quick, natural, intuitive access to your clipboard's history.")
    create_pivotal_workstation_recipe("keyboard_preferences", group04, true, "This recipe enables full keyboard access for all controls, so you can navigate through the UI using keyboard")
    create_pivotal_workstation_recipe("keycastr", group03, true, "KeyCastr, an open-source keystroke visualizer for Mac OS X.")
    create_pivotal_workstation_recipe("libreoffice", group03, false, "LibreOffice is the power-packed free, libre and open source personal productivity suite for Windows, Macintosh and GNU/Linux, that gives six feature-rich applications for all document production and data processing needs: Writer, Calc, Impress, Draw, Math and Base.")
    create_pivotal_workstation_recipe("lion_basedev", group09, false, "This recipe includes all base recipes for Mac OS X 10.8 referred to as 'Mountain Lion'.")
    create_pivotal_workstation_recipe("locate_on", group09, true, "This recipe checks and loads locate, which indexes the filesystem")
    create_pivotal_workstation_recipe("memcached", group01, false, "Memcached is an in-memory key-value store for small chunks of arbitrary data (strings, objects) from results of database calls, API calls, or page rendering.")
    create_pivotal_workstation_recipe("menubar_preferences", group04, true, "This recipe disables the default Apple Menubar transparency (ref:  http://knoopx.net/2011/10/28/os-x-lion-tweaks )")
    create_pivotal_workstation_recipe("menumeters", group03, true, "MenuMeters is a set of CPU, memory, disk, and network monitoring tools for Mac OS X. This recipe installs MenuMeter and adds that to the preferences panes next to the clock.")
    create_pivotal_workstation_recipe("meta_osx_base", group10, false)
    create_pivotal_workstation_recipe("meta_osx_development", group10, false)
    create_pivotal_workstation_recipe("meta_pivotal_lion_image", group10, false)
    create_pivotal_workstation_recipe("meta_pivotal_specifics", group10, false)
    create_pivotal_workstation_recipe("meta_ruby_development", group10, false)
    create_pivotal_workstation_recipe("mongodb", group02, false, "MongoDB is part of the NoSQL family of database systems. Instead of storing data in tables as is done in a 'classical' relational database, MongoDB stores structured data as JSON-like documents with dynamic schemas (MongoDB calls the format BSON), making the integration of data in certain types of applications easier and faster.This recipe installs mongodb, add it to the preference pane and adds it to the startup")
    create_pivotal_workstation_recipe("mouse_locator", group03, true, "Mouse Locator is a simple preference add-on that can be either triggered by a keystroke or always enabled, it creates a green crosshair of sorts around the cursor making it easy to identify on screen. This recipe installs & activates MouseLocator and adds it to preference pane")
    create_pivotal_workstation_recipe("mysql", group02, true, "MySQL is an open source database management system and is used in some of the most frequently visited websites on the Internet.This recipe installs mysql db and sets up the timezone info in db if not set.")
    create_pivotal_workstation_recipe("nginx", group01, false, "Nginx is an open source Web server and a reverse proxy server for HTTP, SMTP, POP3 and IMAP protocols, with a strong focus on high concurrency, performance and low memory usage.Many ruby web frameworks runs on this.This recipe brew installs nginx and copies the nginx.config template to the nginx configuration path")
    create_pivotal_workstation_recipe("node_js", group01, true, "Node.js is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient, perfect for data-intensive real-time applications that run across distributed devices.This recipe installs node.js through npm, which is downloaded from git and compiled")
    create_pivotal_workstation_recipe("oh_my_zsh", group06, false)
    create_pivotal_workstation_recipe("osx_updates", group09, false, "This recipe checks and installs all available osx update from apple")
    create_pivotal_workstation_recipe("pg_admin", group03, false, "pgAdmin is the leading graphical Open Source management, development and administration tool for PostgreSQL.")
    create_pivotal_workstation_recipe("pivotal_logos", group09, false, "This recipe changes the pivotal backgrounds, logos and colors to make the application logos less intrusive to the user")
    create_pivotal_workstation_recipe("postgres", group02, true, " PostgreSQL, often simply Postgres, is an object-relational database management system (ORDBMS) available for many platforms including Linux, FreeBSD, Solaris, Microsoft Windows and Mac OS X.  This recipe installs postgres and add it to startup. creates the default db with user 'postgres'")
    create_pivotal_workstation_recipe("propane", group03, false)
    create_pivotal_workstation_recipe("qt", group01, true, "Qt is a cross-platform application framework that is widely used for developing application software with a graphical user interface (GUI) (in which cases Qt is classified as a widget toolkit), and also used for developing non-GUI programs such as command-line tools and consoles for servers.")
    create_pivotal_workstation_recipe("rabbitmq", group01, false, "RabbitMQ is open source message broker software (message-oriented middleware) that implements the Advanced Message Queuing Protocol standard. It is written in Erlang.")
    create_pivotal_workstation_recipe("rbenv", group06, false, "rbenv lets you easily switch between multiple versions of Ruby. It's simple, unobtrusive, and follows the UNIX tradition of single-purpose tools that do one thing well. This recipe packages rbenv and configures all the existing versions with options and sets the default version of ruby to be used.")
    create_pivotal_workstation_recipe("redis", group01, false, "Redis is an open-source, networked, in-memory, key-value data store with optional durability. This recipe installs redis and adds it to the startup.")
    create_pivotal_workstation_recipe("remove_expose_keyboard_shortcuts", group04, false, "This recipe removes the expose keyboard shortcuts in the system preference.")
    create_pivotal_workstation_recipe("remove_garageband", group04, false, "GarageBand is a multitrack recording application using which you can record real audio pieces, play with software instruments, create parts using Apple Loops, add effects, mix your music and play it all back with iTunes or include in your iMovies.. This recipe removes the garageband app.")
    create_pivotal_workstation_recipe("rename_machine", group09, false, "This recipe rename the machine with set of hostnames given in the preference.")
    create_pivotal_workstation_recipe("rubymine", group08, true, "RubyMine is an IDE which provides intelligent code completion for Ruby and Ruby on Rails code, on-the-fly code analysis and refactoring support for both plain Ruby projects and web applications built with Ruby on Rails.")
    create_pivotal_workstation_recipe("rubymine_preferences_pivotal", group08, true, "This recipe configures the rubymine with the keymaps and templates included.")
    create_pivotal_workstation_recipe("rvm", group06, true, "Ruby Version Manager known as RVM is a Unix software platform that can be used to manage multiple installations of Ruby on the same device.This recipe installs rvm and the ruby version specified. It also sets the default ruby version to be used")
    create_pivotal_workstation_recipe("safari_preferences", group04, false, "This recipe sets a preference in safari browser to show the status bar.")
    create_pivotal_workstation_recipe("screen_sharing_app", group03, true, "ScreenSharing app lets you to share your Desktop screen with the remote machines.")
    create_pivotal_workstation_recipe("screen_sharing_on", group04, false, "This recipe configures the vnc port for screen sharing and checks for screen sharing enabled.")
    create_pivotal_workstation_recipe("selenium_webdriver", group01, false, "Selenium is a portable software testing framework for web applications. Selenium provides a record/playback tool for authoring tests without learning a test scripting language (Selenium IDE).  This recipe installs seleium webdriver and configure it with chromium web browser.")
    create_pivotal_workstation_recipe("set_finder_show_all_hd_on_desktop", group04, false, "This recipe sets the preference to show the internal and external harddrives, removable media on desktop")
    create_pivotal_workstation_recipe("set_finder_show_hd_on_desktop", group04, false, "This recipe sets the preference to show the internal  hard drives on desktop")
    create_pivotal_workstation_recipe("set_finder_show_user_home_in_sidebar", group04, false, "This recipe sets the preference to show user home in the sidebar")
    create_pivotal_workstation_recipe("set_multitouch_preferences", group04, false, "This recipe sets the preference for multitouch, allowing  clicking and dragging by touch")
    create_pivotal_workstation_recipe("set_screensaver_preferences", group04, false, "This recipe sets preferences for screensaver like displaying screensaver, locking screen, asking password if the screen is locked and timeout for display, disk and computer sleep times.")
    create_pivotal_workstation_recipe("shiftit", group03, false, "ShiftIt is an application for OSX that allows you to quickly manipulate window position and size using keyboard shortcuts. This recipe installs ShiftIt on the system and adds it to Auto Launch Application directory.")
    create_pivotal_workstation_recipe("sizeup", group03, true, "Size up is a window management software for Mac OS X. This recipe installs Size up and enables assistive services by default.")
    create_pivotal_workstation_recipe("skype", group03, true, "Skype is a proprietary voice-over-Internet Protocol service and software application. The service allows users to communicate with peers by voice, video, and instant messaging over the Internet and Phone calls may be placed to recipients on the traditional telephone networks.")
    create_pivotal_workstation_recipe("snmpd", group01, false, "snmpd is an SNMP(Simple Network Management Protocol) agent which binds to a port and awaits requests from SNMP management software. This recipe launches snmpd daemon.")
    create_pivotal_workstation_recipe("solr", group01, false, "Solr is an open source enterprise search platform from the Apache.  Its major features include powerful full-text search, hit highlighting, faceted search, dynamic clustering, database integration, and rich document handling. Providing distributed search and index replication, Solr is highly scalable.")
    create_pivotal_workstation_recipe("ssh_copy_id", group09, false, "ssh-copy-id is a script that uses ssh to log into a remote machine presumably using a login password, so password authentication should be enabled.  This recipe installs ssh-copy-id")
    create_pivotal_workstation_recipe("sshd_on", group06, true, "sshd is the daemon program for ssh.Together these programs replace rlogin and rsh, and provide secure encrypted communications between two untrusted hosts over an insecure network. This recipe turns on sshd daemon.")
    create_pivotal_workstation_recipe("ssl_certificate", group09, false, "This recipe creates ssl certificates and adds it to the list of trusted certificates.")
    create_pivotal_workstation_recipe("sublime_text", group08, false)
    create_pivotal_workstation_recipe("svn", group07, false, "Apache Subversion (SVN) is a software versioning and revision control system distributed under an open source license.")
    create_pivotal_workstation_recipe("terminal_focus", group04, false, "FocusFollowsMouse is where the focus automatically follows the current placement of the pointer. This recipe enables FocusFollowsMouse for terminal.")
    create_pivotal_workstation_recipe("terminal_preferences", group04, false, "This recipe sets preferences for terminal color scheme and startup terminal color scheme.")
    create_pivotal_workstation_recipe("textmate", group08, true, "TextMate is a general-purpose GUI text editor for Mac OS X created by Allan Odgaard. Notable features include declarative customizations, tabs for open documents, recordable macros, folding sections and snippets, shell integration, and an extensible bundle system.")
    create_pivotal_workstation_recipe("textmate_bundles", group08, true, "This recipe downloads textmate bundles from http://cheffiles.pivotallabs.com/Pivotal.tmbundle.tar.gz and installs from the source")
    create_pivotal_workstation_recipe("textmate_plugins", group08, false, "ProjectPlus is a plug-in for TextMate which extends the functionality of project-related features. This recipe adds ProjectPlus plug-in to textmate.")
    create_pivotal_workstation_recipe("textmate_preferences", group08, true, "This recipe set textmate preference like show linenumbers, tabspace, save on losing focus, soft tabs")
    create_pivotal_workstation_recipe("timemachine_preferences", group04, false, "This recipe removes the timemachine from system tray and stops it from asking new disk space for backup")
    create_pivotal_workstation_recipe("tmux", group06, true, "tmux is a software application that can be used to multiplex several virtual consoles, allowing a user to access multiple separate terminal sessions inside a single terminal window or remote terminal session. This recipe installs tmux and adds the tmux config file.")
    create_pivotal_workstation_recipe("unix_essentials", group06, true, "This recipe installs the basic unix essentials like wget, pstree, tree, watch, ssh-copy-id")
    create_pivotal_workstation_recipe("user_owns_usr_local", group09, true, "This recipe changes the owner of the '/usr/local' to WS_User")
    create_pivotal_workstation_recipe("vagrant", group03, false, "Vagrant enables a user to create and configure lightweight, reproducible, and portable virtualized development environments. This recipe installs Vagrant on the system.")
    create_pivotal_workstation_recipe("vim", group08, true, "Based on the vi editor common to Unix-like systems, Vim is designed for use both from a command line interface and as a standalone application in a graphical user interface. This recipe installs vim and macvim.")
    create_pivotal_workstation_recipe("virtualbox", group03, true, "VirtualBox is installed on an existing host operating system as an application; this host application allows additional guest operating systems, each known as a Guest OS, to be loaded and run, each with its own virtual environment.")
    create_pivotal_workstation_recipe("window_focus", group04, false, "FocusFollowsMouse is where the focus automatically follows the current placement of the pointer. This recipe enables FocusFollowsMouse for X11 windows.")
    create_pivotal_workstation_recipe("workspace_directory", group09, true, "This recipe creates workspace directory inside current user's home directory.")
    create_pivotal_workstation_recipe("xquartz", group03, true, "The XQuartz project is an open-source effort to develop a version of the X.Org X Window System that runs on OS X.")
    create_pivotal_workstation_recipe("zsh", group06, false, "The Z shell (zsh) is a Unix shell that can be used as an interactive login shell and as a powerful command interpreter for shell scripting.")
  end

  # These are "private" thor tasks - ie, they can't be called from the command line
  #  Best practice: No Recipes or RecipeGroups should be created via the command line (or the console).  They should all
  #  be created via a thor task and in source control.
  no_tasks do
    def create_pivotal_workstation_recipe_group(name, position, description = nil)
      recipe_group = RecipeGroup.find_or_create_by_name(name)
      recipe_group.update_attributes :position => position, :description => description
      recipe_group
    end

    def create_pivotal_workstation_recipe(name, recipe_group, checked_by_default, description = nil)
      Recipe.find_or_create_by_name(name).update_attributes :recipe_group => recipe_group, :checked_by_default => checked_by_default, :description => description
    end
  end

end