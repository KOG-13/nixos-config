{ config, pkgs, lib, ...}:
# Additional settings: 
#   https://nix-community.github.io/home-manager/options.html#opt-programs.firefox.profiles
#   https://mozilla.github.io/policy-templates/
#   https://kb.mozillazine.org/About:config_entries
# about:config for settings/policy values
# about:memory for extension ids
{
    programs.librewolf = {
        enable = true;

        # Extention List. Credit to:
        # https://github.com/mattogodoy/nixos-config/blob/master/home-manager/modules/browsers/librewolf.nix for
        policies = {
            #ManagedBookmarks = lib.importJSON ./bookmarks.json;
            NoDefaultBookmarks = false;
            ExtensionSettings = with builtins;
            let extension = shortID: uuid: {
                name = uuid;
                value = {
                    install_url = "https://addons.mozilla.org/en-US/firefox/downloads/latest/${shortID}/latest.xpi";
                    installation_mode = "normal_installed";
                };
            };
            in listToAttrs [
                # To get the ID, view page the source of the extension in the addon store and search for "guid"
                (extension "darkreader" "addon@darkreader.org")
                (extension "nook" "{46e5cbb1-2128-4001-9397-a941b8017863}")
                (extension "return-youtube-dislike" "{762f9885-5a13-4abd-9c77-433dcd38b8fd}")
                (extension "ublacklist" "@ublacklist")
                (extension "reddit-enhancement-suite" "jid1-xUfzOsOFlzSOXg@jetpack")
                (extension "keepassxc-browser" "keepassxc-browser@keepassxc.org")
                (extension "unhook" "myallychou@gmail.com")
                (extension "zotero" "zotero@chnm.gmu.edu")
            ];

            Preferences = {
                "broswer.aboutConfig.showWarning" = false; # disable about:config warning

                # Disable location bar domain guessing
                "browser.fixup.alternate.enabled" = false;
                # Disable all parts of the url in the bar
                "browser.urlbar.trimURLs" = false;
                # Disable location bar making speculative connections
                "browser.urlbar.speculativeConnect.enabled" = false;

                # Disable form autofill: (Keep commented until keepass test)
                #"browser.formfill.enable" = false;
                #"extensions.formautofill.creditCards.available" = false;
                #"extensions.formautofill.creditCards.enabled" = false;
                #"extensions.formautofill.heuristics.enabled" = false;
                # Diable location bar contextual suggestions:
                "browser.urlbar.quicksuggest.scenario" = "history";
                "browser.urlbar.quicksuggest.enabled" = false;
                "browser.urlbar.suggest.quicksuggest.nonsponsored" = false;
                "browser.urlbar.suggest.quicksuggest.sponsored" = false;

                #Password fill settings
                "signon.rememberSignons" = true; # Disable saving passwords
                "signon.autofillForms" = false; # Disable autofill login and passwords
                "signon.formlessCapture.enabled" = false; # Disable formless login capture for Password Manager

                # General 
                "browser.warnOnQuit" = false;
                "browser.tabs.warnOnClose" = false;
                "browser.tabs.warnOnCloseOtherTabs" = false;
                "browser.warnOnQuitShortcut" = false;

                # Home
                "browser.startup.page" = 0; # Set startup home page
                    # 0 = blank
                    # 1 = home
                    # 2 = last visited page
                    # 3 = resume previous session
                    # browser.startup.homepage = "about:home"
                "browser.newtabpage.enabled" = false; # sets new tab to blank page (LOOK BACK HERE WHEN MAKING STARTPAGE)


                #Search
                "browser.policies.runOncePerModification.setDefaultSearchEngine" = "DuckDuckGo";

                "browser.toolbars.bookmarks.visibility" = "never";

                # Disable search suggestions
                
                "browser.search.suggest.enabled" = true;
                "browser.urlbar.suggest.searches" = false;
                
                
                "browser.urlbar.suggest.addons" = false; 
                "browser.urlbar.suggest.bookmark" = false;
                "browser.urlbar.suggest.clipboard" = false; 
                "browser.urlbar.suggest.engines" = false;
                "browser.urlbar.suggest.fakespot" = false; 
                "browser.urlbar.suggest.history" = false;
                "browser.urlbar.suggest.mdn" = false;
                "browser.urlbar.suggest.openpage" = false; 
                "browser.urlbar.suggest.pocket" = false;
                "browser.urlbar.suggest.quickactions" = false;
                "browser.urlbar.suggest.recentsearches" = false;
                "browser.urlbar.suggest.remotetab" = false;
                "browser.urlbar.suggest.topsites" = false;
                "browser.urlbar.suggest.trending" = false;
                "browser.urlbar.suggest.weather" = false;
                "browser.urlbar.suggest.yelp" = false;

                "browser.urlbar.shortcuts.bookmarks" = false;
                "browser.urlbar.shortcuts.history" = false;
                "browser.urlbar.shortcuts.tabs" = false;
               
                #style
                "toolkit.legacyUserProfileCustomizations.stylesheets" = true;

                # Disable telemetry
                "datareporting.policy.dataSubmissionEnabled" = false;
                "datareporting.healthreport.uploadEnabled" = false;
                "toolkit.telemetry.enabled" = false;
                "toolkit.telemetry.unified" = false;
                "toolkit.telemetry.server" = "data:,";
                "toolkit.telemetry.archive.enabled" = false;
                "toolkit.telemetry.newProfilePing.enabled" = false;
                "toolkit.telemetry.shutdownPingSender.enabled" = false;
                "toolkit.telemetry.updatePing.enabled" = false;
                "toolkit.telemetry.bhrPing.enabled" = false;
                "toolkit.telemetry.firstShutdownPing.enabled" =false;
                "toolkit.telemetry.coverage.opt-out" = true;
                "toolkit.coverage.opt-out" = true;
                "toolkit.coverage.endpoint.base" = "";
                "browser.ping-centre.telemetry" = false;
            }; 
        };


        # Settings that take effect across all profiles

        settings = {
            "sidebar.revamp" = true;
            "sidebar.verticalTabs" = true;
            "sidebar.main.tools" = "bookmarks,history";
            "devtools.inspector.showUserAgentStyles" = true;
        };

        # information on different profiles
        profiles = {
            kieran = {
                id = 0;
                name = "kieran";
                search = {    
                    force = true;
                    default = "ddg";
                    privateDefault = "ddg";
                    order = ["ddg" "google"];
                };
            };
        };
    };
    home.file = {
        ".librewolf/kieran/chrome/userContent.css".source = ./userContent.css;
    };
}
