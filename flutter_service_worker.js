'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/assets/icon/icon.png": "40b17e15eadb56a62c523f5e423edc49",
"assets/assets/icon/buy_amazon.png": "6755e790afe7a30c8eb62620946a327a",
"assets/assets/bgg_images/Cascadia%2520Landmarks.jpeg": "2d88e9f1d3fe49ca412d3451332d829d",
"assets/assets/bgg_images/Cartographers.jpeg": "c0f688daa2f5aeff0c62ecfe7efb3b9e",
"assets/assets/bgg_images/Elysium.jpeg": "0252347e42b8c001c5472b5d850426a1",
"assets/assets/bgg_images/Harmonies.jpeg": "48d3a4efc21903d7baefc4b8f7c64f34",
"assets/assets/bgg_images/Azul%2520Duel.jpeg": "cb44334824e0b4beece6685e209bb934",
"assets/assets/bgg_images/Cascadia.jpeg": "c383a5e67935ea05b7136b1e722e9310",
"assets/assets/bgg_images/Cascadia%2520Rolling.jpeg": "e59c1610393d656de91ff826b320665e",
"assets/assets/bgg_images/Rebel%2520Princess.jpeg": "b7a547f03d1b448a4843de7e7fbe1e13",
"assets/assets/bgg_images/Sushi%2520Go%2520Party.jpeg": "de90ca8ad35ca56bd325ae26ba5a9c59",
"assets/assets/bgg_images/Long%2520Shot:%2520The%2520Dice%2520Game.jpeg": "7fb0bb525b41b383e2a30444bf5ae896",
"assets/assets/bgg_images/Wyrmspan.jpeg": "cd79c1353e6d84cf5f8b761eff359060",
"assets/assets/bgg_images/Carnegie.jpeg": "9d86ac6d4628e18fd703ccd0eb328126",
"assets/assets/bgg_images/Get%2520On%2520Board.jpeg": "db98ef67f69b9cfec07ddd26c7ac4336",
"assets/assets/bgg_images/Cubitos.jpeg": "4f8838ab5e43322426ad802fff970fbb",
"assets/assets/bgg_images/Verdant.jpeg": "7f60fe865daa748d061eb40635f42d90",
"assets/assets/bgg_images/Ark%2520Nova.jpeg": "fad0c47f68bda16ff65761e522191b64",
"assets/assets/bgg_images/Thunder%2520Road:%2520Vendetta.jpeg": "df492bab409f271fb9f8fda33faac5dc",
"assets/assets/bgg_images/Everdell%2520Farshore.jpeg": "a5af12ea86f7abdb8f99b7cc7ca0a70f",
"assets/assets/bgg_images/Stamp%2520Swap.jpeg": "9210cb884fab0aa892340c7406f9733a",
"assets/assets/bgg_images/Black%2520Forest.jpeg": "2c8eb3c677cd64b6309701be2d0321ea",
"assets/assets/bgg_images/Everdell%2520Duo.jpeg": "18d542ed51b8137832408ef5284fe6fc",
"assets/assets/bgg_images/Great%2520Western%2520Trail.jpeg": "2b4a9a5b7a901a670c1bd68d99c25b9c",
"assets/assets/bgg_images/Wingspan.jpeg": "f62c14220126ee6ddfd945254b44cf4c",
"assets/assets/bgg_images/Great%2520Western%2520Trail:%2520Argentina.jpeg": "3b459222e85b452bcebcff1c427b53a3",
"assets/assets/bgg_images/Dice%2520Throne.jpeg": "ac69b9945be1d23311c851534744b0d8",
"assets/assets/bgg_images/Canvas.jpeg": "4c65de669117644ca0e102f153552699",
"assets/assets/bgg_images/Everdell.jpeg": "e54514a939e65d598042fa86738a2b57",
"assets/assets/bgg_images/Dale%2520of%2520Merchants.jpeg": "55958df48f85bb158be2ef252185ecf4",
"assets/assets/bgg_images/Moon%2520Colony%2520Bloodbath.jpeg": "84a66892a40eb475d999717f6727defe",
"assets/assets/bgg_images/Finspan.jpeg": "2086d1ee3e169799b2a91ddd6e4dd275",
"assets/assets/bgg_images/Life%2520of%2520the%2520Amazonia.jpeg": "a2629c5c50c5c4309827c3c19506dba1",
"assets/assets/bgg_images/Distilled.jpeg": "5c6b95bc020222cfbd81d3e29a4f2f72",
"assets/assets/bgg_images/Res%2520Arcana.jpeg": "8b00c6b74da73dd6bd053fa9691e291d",
"assets/assets/bgg_images/Welcome%2520To.jpeg": "cc61e70ea155360acd958d2e2679ba8b",
"assets/assets/bgg_images/Mind%2520Space.jpeg": "058c292b5f6d9733f255f5a5f3a9fc65",
"assets/assets/bgg_images/Winter%2520Kingdom.jpeg": "c9371082045cd4445886c6f6b2b987c6",
"assets/assets/bgg_images/Nusfjord.jpeg": "278974e0dc9f6da1dbc4d06535fc58dd",
"assets/assets/bgg_images/Tiny%2520Towns.jpeg": "34d1e07fd60cc7d1ee4c5fb7744ae16f",
"assets/assets/bgg_images/Great%2520Western%2520Trail:%2520New%2520Zealand.jpeg": "ce9ab3b95e8475057b9548a828c34b26",
"assets/assets/bgg_images/Kingdom%2520Builder.jpeg": "dc98f6b45ac2f4fd1dc2b1f2784cb5d2",
"assets/assets/bgg_images/Quacks%2520of%2520Quedlinburg.jpeg": "f7acfdc54bcfb252263d7b49722960e5",
"assets/AssetManifest.bin": "f14556dfea05e61c10c6082c9f6f1950",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e14d4247c0221552f79bf5629127cff4",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "0fb0462f36655ee81b15e3d19be8c7dd",
"assets/AssetManifest.json": "a6d137ea1546bbafb247631ffe60368b",
"assets/fonts/MaterialIcons-Regular.otf": "952dd162dc7d0aed9de1ad106e1d3058",
"assets/NOTICES": "46b325666784ef1af96f5d0143e39718",
"version.json": "a38ad58a90848bcb7efe83e0732b4e6c",
"manifest.json": "7830a3e7fde06fa2fbadd0e9ad108966",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"main.dart.js": "2ac68ca8f830e2afc928a1d9f7d7d928",
"flutter_bootstrap.js": "9975fccdd671d8b8cf3b56b79359c40a",
"sqflite_sw.js": "41d6f28c171e7b733ec131001e5b2db4",
"index.html": "fff46896328240cdcb2877588bd608e7",
"/": "fff46896328240cdcb2877588bd608e7",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"icons/Icon-192.png": "48d3353bb9e9b2c019cc932f4efc3810",
"icons/Icon-512..png": "40b17e15eadb56a62c523f5e423edc49",
"favicon.png": "9d4a407bacec89a8c72a956a3506df7d",
"sqlite3.wasm": "f08450f1d5a088a01cec0eb541c3aeca"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
