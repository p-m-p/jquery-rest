module.exports = function (grunt) {
  grunt.initConfig({
    min: { dist: {
        src: 'build/jquery-rest.js'
      , dest: 'build/jquery-rest.min.js'
    }}
  });
};
