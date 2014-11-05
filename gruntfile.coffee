module.exports = (grunt) ->
  require('load-grunt-tasks') grunt

  grunt.initConfig
    compass:
      devel:
        options:
          config: 'config.rb'
          environment: 'development'
          bundleExec: true
      prod:
        options:
          config: 'config.rb'
          environment: 'production'
          bundleExec: true

    watch:
      compass:
        files: 'sass/*'
        tasks: 'compass:devel'