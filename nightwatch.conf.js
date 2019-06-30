const chromedriver = require('chromedriver');
const geckodriver = require('geckodriver');


module.exports = {
  test_settings: {
    default: {
      webdriver: {
        start_process: true,
        server_path: chromedriver.path,
        port: 4445,
        cli_args: ['--port=4445']
      },
      desiredCapabilities: {
        browserName: 'chrome',
        javascriptEnabled: true,
        acceptSslCerts: true,
        chromeOptions: {
          args: ['disable-gpu']
        }
      }
    },
    // chrome: {
    //   webdriver: {
    //     server_path: chromedriver.path
    //   },
    //   desiredCapabilities: {
    //     browserName: 'chrome',
    //     javascriptEnabled: true,
    //     acceptSslCerts: true,
    //     chromeOptions: {
    //       args: ['headless','disable-gpu']
    //     }
    //   }
    // },
    firefox: {
      webdriver: {
        server_path: geckodriver.path
      },
      desiredCapabilities: {
        browserName: 'firefox',
        marionette: true
      }
    }
  }
};
