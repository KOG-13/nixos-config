{ config, pkgs, user, inputs, ...}:
{
    programs.browserpass.enable = true;
    programs.firefox = {
	enable = true;
	#programs.firefox.profiles.<name>.bookmarks
	profiles.kieran = {
	    bookmarks = [
		{
		    name = "Bookmarks Toolbar";
		    toolbar = true;
		    bookmarks = [
			{
			    name = "Unraid";
			    bookmarks = [
				{
					name = "Tower/Main";
					url = "http://192.168.1.150/";
				}

				{
				name = "Photoprism";
				url = "http://192.168.1.150:2342/";
				}

				{
				name = "Jellyfin";
				url = "http://192.168.1.150:8096/";
				}
			    ];
			}

			{
			    name = "Coding";
			    bookmarks = [
				{
				    name = "webdev";
				    bookmarks = [
					{
					    name = "CSS Diner";
					    url = "https://flukeout.github.io/#";
					}

					{
					    name = "Flexbox Froggy";
					    url = "https://flexboxfroggy.com/";
					}

					{
					    name = "CSS Properties";
					    url = "https://css-tricks.com/almanac/properties/";
					}

					{
					    name = "Font Awesome Icons";
					    url = "https://fontawesome.com/search";
					}

					{
					    name = "React Libraries";
					    bookmarks = [
						{
						    name = "Prettier";
						    url =
						    "https://prettier.io/docs/en/options.html#arrow-function-parentheses";
						}

						{
						    name = "Typescript Config";
						    url = "https://www.typescriptlang.org/tsconfig#allowSyntheticDefaultImports";
						}

						{
						    name = "Yarn Search";
						    url = "https://yarnpkg.com/";
						}

						{
						    name = "React Spring";
						    url = "https://yarnpkg.com/";
						}
					    ];
					}
				    ];
				}
			    ];
			}

			{
			    name = "Synology";
			    bookmarks = [
				{
				    name = "Synology";
				    url = "http://192.168.1.68:5000/";
				}

				{
				    name = "Syncthing";
				    url = "http://127.0.0.1:8384/#";
				}

			    ];
			}

			{
			    name = "School";
			    bookmarks = [
				{
				    name = "Homepage";
				    url = "https://my.liu.edu/";
				}

				{
				    name = "Homepage - Long Island University";
				    url = "https://lms.liu.edu/d2l/home";
				}

				{
				    name = "Udemy";
				    url = "https://www.udemy.com/";
				}
			    ];
			}
		    ];
		}
	    ];


		
		search = {
		    force = true;
		    default = "DuckDuckGo";
		    privateDefault = "DuckDuckGo";
		    order = ["DuckDuckGo" "Google"];
		};

		settings = {


		    # I basically just went to "about:config" and entered any modified preferences that seemed right
		    "browser.search.region" = "US";
		    "browser.startup.page" = 1;
		    "browser.startup.homepage" = "chrome://browser/content/blanktab.html";
		    "browser.toolbars.bookmarks.visibility" = "always";
		    "browser.translations.panelShown" = true;
		    "browser.urlbar.placeholderName" = "DuckDuckGo";
		    "browser.urlbar.placeholderName.private" = "DuckDuckGo";
		    "browser.urlbar.shortcuts.bookmarks" = false;
		    "browser.urlbar.shortcuts.history" = false;
		    "browser.urlbar.shortcuts.tabs" = false;
		    "browser.urlbar.suggest.bookmark" = false;
		    "browser.urlbar.suggest.engines" = false;
		    "browser.urlbar.suggest.history" = false;
		    "browser.urlbar.suggest.openpage" = false;
		    "browser.urlbar.suggest.recentsearches" = false;
		    "browser.urlbar.suggest.topsites" = false;
		    "browser.warnOnQuitShortcut" = false;

		    "devtools.everOpened" = true;

		    "extensions.activeThemeID" = "firefox-compact-dark@mozilla.org";

		    "media.videocontrols.picture-in-picture.video-toggle.enabled" = false;

		    "privacy.bounceTrackingProtection.hasMigratedUserActivationData" = true;
		    "privacy.donottrackheader.enabled" = true;
		    "privacy.globalprivacycontrol.enabled" = true;
		    "privacy.globalprivacycontrol.was_ever_enabled" = true;
		    "privacy.history.custom" = true;
		    "privacy.purge_trackers.date_in_cookie_database" = 0;
		    "privacy.trackingprotection.enabled" = true;
		    "privacy.trackingprotection.socialtracking.enabled" = true;
		    "privacy.userContext.enabled" = true;
		    "privacy.userContext.ui.enabled" = true;


		    # Suggestions by https://brainfucksec.github.io/firefox-hardening-guide
		    "browser.aboutConfig.showWarning" = false;
		    "browser.newtabpage.enabled" = false;
		    "browser.newtab.preload" = false;
		    "browser.newtabpage.activity-stream.feeds.telemetry" = false;
		    "browser.newtabpage.activity-stream.elemetry" = false;
		    "browser.newtabpage.activity-stream.feeds.snippets" = false;
		    "browser.newtabpage.activity-stream.feeds.section.topstories" = false;
		    "browser.newtabpage.activity-stream.highlights.includePocket" = false;
		    "browser.newtabpage.activity-stream.feeds.discoverystreamfeed" = false;
		    "browser.newtabpage.activity-stream.showSponsored" = false;
		    "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;

		    # Look back at geolocation stuff
		    "intl.accept_languages" = "en-US,en";
		    "javascript.use_us_english_locale" = true;

		    "app.update.auto" = false;

		    "extensions.getAddons.showPane" = false;
		    "extensions.htmlaboutaddons.recommendations.enabled" = false;
		    "browser.discovery.enabled" = false;

		    # Telemetry 
		    "datareporting.policy.dataSubmissionEnabled" = false;
		    "datareporting.healthreport.uploadEnabled" = false;
		    "toolkit.telemetry.enabled" = false;
		    "toolkit.telemetry.server"  = "data:, ";
		    "toolkit.telemetry.archive.enabled" = false;
		    "toolkit.telemetry.newProfilePing.enabled" = false;
		    "toolkit.telemetry.shutdownPingSender.enabled" = false;
		    "toolkit.telemetry.updatePing.enabled" = false;
		    "toolkit.telemetry.bhrPing.enabled" = false;
		    "toolkit.telemetry.firstShutdownPing.enabled" = false;
		    "toolkit.telemetry.coverage.opt-out" = true;
		    "toolkit.coverage.opt-out" = true;
		    "toolkit.coverage.endpoint.base" = "";
		    "browser.ping-centre.telemetry" = false;
		    "beacon.enabled" = false;


		    # Studies
		    "app.shield.optoutstudies.enabled" = false;
		    "app.normandy.enabled" = false;
		    "app.normandy.api_url" = "";

		    # Crash Reports
		    "breakpad.reportURL" = "";
		    "browser.tabs.crashReporting.sendReport" = false;

		    # Search Bar 
		    "browser.search.suggest.enabled" = false;
		    "browser.urlbar.suggest.searches" = false;
		    "browser.fixup.alternate.enabled" = false;
		    "browser.urlbar.trimURLs" = false;
		    "browser.urlbar.speculativeConnect.enabled" = false;
		    "browser.formfill.enabled" = false;
		    "extensions.formautofill.addresses.enabled" = false;
		    "extensions.formautofill.available" = "off";
		    "extensions.formautofill.creditCards.available" = false;
		    "extensions.formautofill.creditCards.enabled" = false;
		    "extensions.formautofill.heuristics.enabled" = false;
		    "browser.urlbar.quicksuggest.scenario" = "offline"; #website suggest value of "history"
		    "browser.urlbar.quicksuggest.enabled" = false;
		    "browser.urlbar.suggest.quicksuggest.nonsponsored" = false;
		    "browser.urlbar.suggest.quicksuggest.sponsored" = false;

		    # Passwords
		    "signon.rememberSignons" = false;
		    "signon.autofillForms" = false;
		    "signon.formlessCapture.enabled" = false;
		    /*Hardens against potential credentials phishing:
			0 = don’t allow sub-resources to open HTTP authentication credentials dialogs
			1 = don’t allow cross-origin sub-resources to open HTTP authentication credentials dialogs
			2 = allow sub-resources to open HTTP authentication credentials dialogs (default)
		    */
		    "network.auth.subresource-http-auth-allow" = 1;



		    






		








		    "privacy.clearOnShutdown.history" = false;
		    # Allow executing JS in the dev console
		    "devtools.chrome.enabled" = true;
		    # Disable browser crash reporting
		    # Allow userCrome.css
		    "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
		    "accessibility.typeaheadfind.enablesound" = false;
		    "general.autoScroll" = true;
		    "browser.ctrlTab.sortByRecentlyUsed" = false; # (default) Who wants that?

		    # Disable telemetry for privacy reasons
		    "toolkit.telemetry.unified" = false;
		    "extensions.webcompat-reporter.enabled" = false; # don't report compability problems to mozilla
		    "browser.urlbar.eventTelemetry.enabled" = false; # (default)

		    # Disable some useless stuff
		    "extensions.pocket.enabled" = false; # disable pocket, save links, send tabs
		    "extensions.abuseReport.enabled" = false; # don't show 'report abuse' in extensions
		    "identity.fxaccounts.enabled" = false; # disable firefox login
		    "identity.fxaccounts.toolbar.enabled" = false;
		    "identity.fxaccounts.pairing.enabled" = false;
		    "identity.fxaccounts.commands.enabled" = false;
		    "browser.contentblocking.report.lockwise.enabled" = false; # don't use firefox password manger
		    "browser.uitour.enabled" = false; # no tutorial please

		    # Privacy

		};

	};
    }; 
}
