# PROJECT_NAME Tests

Place this folder in the root folder of the project next to docroot or web.

Import the behat_ui.settings.yml config into Behat UI settings.
The config are for Platform.sh servers.

Better of we test with the "test" branch and test environment which is a copy
of the dev environment, after tests are passing. we deploy DEV to STG.

The behat.yml file should in the root folder of the project
be next to docroot and features folder.
