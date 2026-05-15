{{flutter_js}}
{{flutter_build_config}}

_flutter.loader.load({
  onEntrypointLoaded: async function (engineInitializer) {
    const appRunner = await engineInitializer.initializeEngine();
    setTimeout(() => {
      const preloader = document.querySelector('.preloader');
      if (preloader) {
        preloader.style.opacity = '0';
        preloader.style.display = 'none';
      }
    }, 500);
    await appRunner.runApp();
  },
});
