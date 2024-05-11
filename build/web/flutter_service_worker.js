'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "6a98a0052fdff4a2173756c7a00783e8",
"favicon.ico": "ff4f70219da03539a248a31a47b9b153",
"index.html": "d19e12ef2c04a91c68d4d8db88c195d0",
"/": "d19e12ef2c04a91c68d4d8db88c195d0",
"main.dart.js": "1a1f339054098981b8cee0e21e295b33",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "5c68a3f850c2ddb93943499d2c7bd29f",
"assets/AssetManifest.json": "dad3c3501d84dd6708f18461e2c723cd",
"assets/NOTICES": "d6127925f75e00999fabe228233bb81b",
"assets/FontManifest.json": "3c6f2aec284ba6e927fd5e00fb6c4257",
"assets/AssetManifest.bin.json": "332503c35887edbd9ac311bfdae98ea5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/iconsax/lib/assets/fonts/iconsax.ttf": "071d77779414a409552e0584dcbfd03d",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "308495bfc3b5b3039c769d0d89ed9a43",
"assets/fonts/MaterialIcons-Regular.otf": "fe08ee1b48b05fd13d9c263e85e11d01",
"assets/assets/images/intro/cover.webp": "92bd6f15bedd36cc1eae270d1d108216",
"assets/assets/images/intro/discord-clone.webp": "fa5e1a14b199043722b21def15b23187",
"assets/assets/images/intro/bg.webp": "7d642d8475760760eb1ca52577b4f791",
"assets/assets/images/intro/spotify-clone.webp": "e31826860ff9e421885bb0d44d244f28",
"assets/assets/images/intro/IMG.webp": "acea2ecbb0cf6a2c57df08b4f30d4327",
"assets/assets/images/intro/dalle-clone.webp": "5431c7a145b63ad8ecc360fb733c5c8a",
"assets/assets/images/intro/amazon-clone.webp": "23a562ffb22d6556ee675618bdaf6775",
"assets/assets/images/intro/bg2.webp": "29c7379356015854b1bd52f1578388e7",
"assets/assets/images/intro/IMG2.webp": "7d9d3d5d6a0fd0dcdeac7b0ca4c4ff4b",
"assets/assets/images/projects/icansee.webp": "1c1023b42063e7ec22d49c91aba4fed2",
"assets/assets/images/brand/aditya-kumar-gaur-high-resolution-logo-black-transparent.png": "1eeca22c7455d88384a51f447a9c0161",
"assets/assets/images/brand/aditya-kumar-gaur-high-resolution-logo-white-transparent.png": "71698da574089f54dca09bc82debbd34",
"assets/assets/images/social/overflow.png": "9a7e0f17bbb5786db1a50cb138ce0467",
"assets/assets/images/social/github.png": "ef9cec02929698e4eee85746d4d4bbba",
"assets/assets/images/social/leetcode.png": "0788c0f924d2217c25fb4aff78188ce8",
"assets/assets/images/social/twitter.png": "3e8e7ee8666a9f4e2946f39ff2f806e3",
"assets/assets/images/social/linkedin.png": "9d4d435a1bba06c56ddf282947c5917c",
"assets/assets/images/icon/home.png": "f57db47d10f091d8444fcc4295956854",
"assets/assets/images/icon/about.png": "76bb48a03288f2f06ceb70b1c5486ce1",
"assets/assets/lottie/catStand.json": "9b654fdd079c60db2cc83e2d344c388b",
"assets/assets/lottie/cateye.json": "160877ef043dc78ba2e069f221f74c05",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
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
