{ pkgs, ... }:

# https://nix-community.github.io/home-manager/options.html#opt-programs.firefox.profiles

# URL for extenstions
let
    addon_URL = name: "https://addons.mozilla.org/firefox/downloads/latest/${name}/latest.xpi";
in
{
    programs.librewolf = {
        enable = true;

        # Additional settings: https://mozilla.github.io/policy-templates/
        policies = {

        };

        # information on different profiles
        profiles = {
            # profile specific preferences
            settings = {
            };
        };

        # Settings that take effect across all profiles
        preferences = {
            "broswer.aboutConfig.showWarning" = false; # disable about:config warning
            "browser.startup.page" = 0; # Set startup home page
                # 0 = blank
                # 1 = home
                # 2 = last visited page
                # 3 = resume previous session
                # browser.startup.homepage = "about:home"

            # Search Bar Settings
            
            # Disable search suggestions
            "browser.search.suggest.enabled" = false;
            "browser.urlbar.suggest.searches" = false;

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
            "signon.rememberSignons" = false; # Disable saving passwords
            "signon.autofillForms" = false; # Disable autofill login and passwords
            "signon.formlessCapture.enabled" = false; # Disable formless login capture for Password Manager





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
}
