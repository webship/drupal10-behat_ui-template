# Drupal + Behat + Behat UI

This is a template "behat.yml" and "features" testing folder to work with Behat and Behat UI on the Platform.sh system.

## Setup Behat UI module and configs for Drupal projects.

This is a template "behat.yml" and "features" testing folder to work with Behat and Behat UI on the Platform.sh system.

### Automated Setup
To setup Drupal + Behat + Behat UI, please see: https://github.com/webship/wbash

### Manual Setup
To setup manually, please follow the steps below:

1. Add the Behat UI module in to require-dev

```
composer require --dev drupal/core-dev:~10.0
composer require --dev drush/drush:~11.0
composer require --dev drupal/drupal-extension:~5.0 --with-all-dependencies
composer require --dev webship/behat-html-formatter:~1.0
composer require --dev drevops/behat-screenshot
composer require --dev drupal/behat_ui:~5.0
```

2. Copy the `behat.yml` file from this folder to the root project folder
3. Change `PROJECT_NAME`, `PLATFORMSH_PROJECT_PATH`, and `PROJECT_BASE_URL` in `behat.yml` with the project code folder name and path in Platform.sh, and the URL for the environment you want to test on.

```
base_url: 'PROJECT_BASE_URL'
```

4. Optionally change the Selenium server URI from `wd_host`.
  
```
selenium2:
  wd_host: 127.0.0.1:4444/wd/hub
```

5. Copy the `"features"` folder to the root project directory.
7. Replace the `DRUPAL_PROJECT_PATH` string in all files with the project name.
7. Import the `"features/behat_ui.settings.yml"` configs after enabling the Behat UI module.
8. Add to `.gitignore` in the project to ignore paths like:

```
features/reports/*
features/logs/*
features/screenshots/*
```


This setup is for Behat + Behat UI
Developers can use bin/behat locally.
QA/Testers can use Behat UI on the testing environment copy of the site, not
the staging or the production.

This is done so we can dynamically set path, drush alias, and URL.
It is just a copy of the behat.yml file found in the root project folder
