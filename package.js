Package.describe({
  name: 'smeevil:session-store',
  summary: 'A persistent session store using amplify',
  version: '1.0.0',
  git: 'https://github.com/smeevil/session-store.git'
});

Package.onUse(function(api) {
  api.versionsFrom("METEOR@0.9.0");
  api.use(
      [
        'underscore@1.0.0',
        'coffeescript@1.0.0',
        'amplify@1.0.0',
        'session'
      ]
  );

  api.add_files([
          'smeevil_session_store.coffee'
      ], 'client'
  );

});