'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/assets/images/projects/notepad_api_project.png": "6a3a1b1c16af30e553f2839427c54b51",
"assets/assets/images/projects/snake_project.jpeg": "bf2b950b4fc5f670ceb57b536d1a20b4",
"assets/assets/images/projects/snownotepad_project.jpg": "ccce5a9b031303bf024e4fbd932ab005",
"assets/assets/images/projects/chasing30_project.png": "161907110fe831eb801ef54ddf724897",
"assets/assets/images/projects/polaris_project.png": "4da0d1f194686f645ad22cb04017ac1d",
"assets/assets/images/projects/crimebuster_project.jpg": "b74a6309a26a3fc333b55afec028d98f",
"assets/assets/images/projects/notepad_web_project.jpg": "28cb51f67fd62d86a1043fa15d11b38e",
"assets/assets/images/perfil.jpg": "420330509da46aa0413dfc26077c80fe",
"assets/assets/icons/logo.png": "5586af04258ffcee11ef2781437ef667",
"assets/assets/icons/splash-icon.png": "176b696878d09ffce53178e84458afb6",
"assets/FontManifest.json": "d0aa5d577e1d2f5491ee519639f78ab5",
"assets/AssetManifest.json": "5f4391bbe7cff46973c5f64d0655133c",
"assets/NOTICES": "8eb981fe1a97f4454ac7ba92d54d4495",
"assets/AssetManifest.bin": "09c23442753f55f1c1874ae66e92cbe4",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin.json": "6a2fe379eda00bc38ac9d586dddf882e",
"assets/fonts/MaterialIcons-Regular.otf": "5c26de82d2b22cc99da0bd51d0020509",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "b72c617acdf2227c8b1413215f620711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "4f9b34c4ca658a3d7eb5e085e29507f2",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a5d7457fda15b7622c14f432ba63039a",
"assets/packages/dev_icons/fonts/devicon.ttf": "1dede8d498067ea893dc79a5bfd7692c",
"manifest.json": "6d5bc19dc2f8e70e3b729fcd1e7a3c25",
"index.html": "12f7db7ca727379fd237d6cbbefc7bf6",
"/": "12f7db7ca727379fd237d6cbbefc7bf6",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"icons/Icon-maskable-512.png": "2844b5fd20a8c9a733b7074263b5a7f1",
"icons/Icon-192.png": "6e95998f22facbf561f9f377965ea0cc",
"icons/Icon-512.png": "2844b5fd20a8c9a733b7074263b5a7f1",
"icons/Icon-maskable-192.png": "6e95998f22facbf561f9f377965ea0cc",
"favicon.png": "0f3b5e2ca58c6dbfe0560b6e96f9554e",
"splash/img/light-1x.png": "b934d47682a1f151468959e1946c88b1",
"splash/img/light-4x.png": "7cf529a5520702768b9705d30526dadf",
"splash/img/light-3x.png": "2fd1fdf435c7946733d84b170939585b",
"splash/img/light-2x.png": "4ff520a050bfcd58d2db7128db987be8",
"splash/img/dark-1x.png": "b934d47682a1f151468959e1946c88b1",
"splash/img/dark-3x.png": "2fd1fdf435c7946733d84b170939585b",
"splash/img/dark-2x.png": "4ff520a050bfcd58d2db7128db987be8",
"splash/img/dark-4x.png": "7cf529a5520702768b9705d30526dadf",
"splash/splash.js": "123c400b58bea74c1305ca3ac966748d",
"splash/style.css": "3b511ccb5f0a408b7d5680af6eebc4ab",
"main.dart.js": "41f308692ec1d31d1e15f0cbb5ec49e7",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"version.json": "ef936e20a1f5d5e5df96cea289819279"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
