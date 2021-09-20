module.exports = {
  files: ['tmp/*'],
  watchEvents: ["change", "unlink", "add"],
  snippetOptions: {
      rule: {
          match: /<head[^>]*>/i,
          fn: function (snippet, match) {
              return match + snippet
          }
      }
  }
};
