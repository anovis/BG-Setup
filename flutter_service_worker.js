'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/assets/bgg_images/Cascadia%2520Landmarks.jpeg": "2d88e9f1d3fe49ca412d3451332d829d",
"assets/assets/bgg_images/Cascadia.jpeg": "c383a5e67935ea05b7136b1e722e9310",
"assets/assets/bgg_images/Wingspan.jpeg": "f62c14220126ee6ddfd945254b44cf4c",
"assets/assets/bgg_images/Res%2520Arcana.jpeg": "8b00c6b74da73dd6bd053fa9691e291d",
"assets/AssetManifest.bin": "3f8c838ddbd365eb0431f51277af1679",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "ecc772b460e802f7cf3f88fc45013e05",
"assets/AssetManifest.json": "5df58860c6fe04223402eb64b3a8c7f7",
"assets/fonts/MaterialIcons-Regular.otf": "b5889581e524fa78b18cc7919324ec73",
"assets/NOTICES": "61c31511d22b1ebfac89ad7a1343e2d8",
"version.json": "8f0129bb9451f30d336d2bcb190fd584",
"manifest.json": "3c674b417189b808bf962956c78a2f11",
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
".git/COMMIT_EDITMSG": "375e8a39ec9331ddd89c8acbeb620028",
".git/config": "3076daa9a9c5bec01a32d38dcdaf4dba",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/refs/heads/main": "3f30a465ca777b621ddb7c2a75288435",
".git/refs/remotes/web/main": "3f30a465ca777b621ddb7c2a75288435",
".git/logs/refs/heads/main": "fb9dd50417548b6360e5e2c28119ad5b",
".git/logs/refs/remotes/web/main": "11a5a3a3a92d9cd0bb50479a07b19b26",
".git/logs/HEAD": "fb9dd50417548b6360e5e2c28119ad5b",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/objects/39/35cd41747c91aaf563d509b312ab21f7df7756": "942afd5169437652757308a122d7d56a",
".git/objects/d3/84d16929a95fc6cd55f6de3dc0fd0d6dca7296": "e714ab108a82dd47e5c024d64284f2d3",
".git/objects/d3/782b20a7488f15c65cac86fea51d9b63426b1c": "d508f8d395d6160e90b79661f0ab9bdb",
".git/objects/c9/bf8af1b92c723b589cc9afadff1013fa0a0213": "632f11e7fee6909d99ecfd9eeab30973",
".git/objects/b1/1ee56b489ee54f6de9c0d2c762cf4501aac0b3": "06d81196bd67f4a913cad996a5881263",
".git/objects/7d/b754f3b03e50528b483cf508cb0f832321aea1": "9e74f21d3844c0906b27e961292a69e7",
".git/objects/d6/7c4b6cfe21216b01541f2a0a3f9adc73df1c34": "30ea5f06d28b238e334eb3e58e1f58ef",
".git/objects/62/c89ee094658c7a9465824fdb42793a64ea557b": "133cd5da638f245b079d9e9cdc29ae38",
".git/objects/65/7b8ed146e49c4b276394ec423ac69600703296": "d1e05e4953322490e08ff9831f925204",
".git/objects/98/73fbaff7d17c253f63136c6d11fdd1725bce61": "7af38bf45c9c5be08a30928c4c4dda3b",
".git/objects/f9/83f539a24eb78cb6c1a8ad8ff884dcd9537bfd": "bdb65006470e72b9859a0e6b0d5a4a36",
".git/objects/69/c6ed5246db4a8e3cb86d3f79297f9d9ff1ec86": "0f942ca7075317bd1d67d2358e9134ff",
".git/objects/69/f12f579bfa4fc4b26a841e5e8a25d772a05ef6": "90f7ffd87001a30547b809a4f7fb30d0",
".git/objects/1c/c5c8393ba23869cae680e1cdefa93e28f56894": "c256278c4d75991583c4d8098bb1c88f",
".git/objects/bc/d7bd1fbe15c5b5feecdfef2616cd6311c75e5a": "4a1e8d033e1017054828bfa6542196d1",
".git/objects/bc/cb97027f1d85d73fd09220753d988899013cf5": "f979b7cff0f7b7fb1c8975fac2818b95",
".git/objects/fa/b8f6a13f96a9899d63026f198657c0d8d3197b": "94eeaaaae60f7f9b0961b73458b557ae",
".git/objects/0f/c344c7e8b9e32ea1ad91f30ded22556352d7bf": "a8a30f28869f7378465338066f34d80d",
".git/objects/b9/846aab0d2a05fb20e3f527db6cb7e45282324a": "81b62e7f2ee15dec027b4993926cfde1",
".git/objects/f3/6506bce5e180f9c7b9008c7af4108c55276cc0": "fb5092763d0f83ce83889cad26cc61c2",
".git/objects/c1/2a2214c01a2f7ee3058d8f276f4f096401fc64": "78ff195da5b8f2e17df1a251e4fac286",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/37/98e369d4deeadc6f909f4fd5f24a13ef4420a7": "a869b6087c3b16b20ca8ef009228f143",
".git/objects/ce/6d3b1b21778124380690ee9fbe6fe0881b373a": "c9a7bc8473e66a1adfbcf84f3dd51488",
".git/objects/94/f7d06e926d627b554eb130e3c3522a941d670a": "77a772baf4c39f0a3a9e45f3e4b285bb",
".git/objects/58/b007afeab6938f7283db26299ce2de9475d842": "6c6cbea527763bb3cdff2cecfee91721",
".git/objects/58/356635d1dc89f2ed71c73cf27d5eaf97d956cd": "f61f92e39b9805320d2895056208c1b7",
".git/objects/d1/098e7588881061719e47766c43f49be0c3e38e": "f17e6af17b09b0874aa518914cfe9d8c",
".git/objects/6e/33d7ccceed3f5e19e7b8224a15d31439ea72b3": "9bce6b7ef4750821cc6b53e36781b03e",
".git/objects/60/766dd2807d6894ad9d01812e10644e210fb7d5": "270d41030ba7fd29a11067b78fc060b0",
".git/objects/6a/9d804a6fb54bfe0980f35a95449f861e3f67e2": "01a78a59adb4c2268a2f0b028a92eee0",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/18/eb401097242a0ec205d5f8abd29a4c5e09c5a3": "4e08af90d04a082aab5eee741258a1dc",
".git/objects/54/93f93971f0fc06de8817a90234454e6d664412": "b53de6bc462439cf4f7eee38237d7c3f",
".git/objects/54/60a1178ce00405678543ec1edb9b832170a03a": "3c344907e8432ca970e806e5bbaa925c",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/af/8e16d3df7200d76db7595e81274efbaf486cda": "9345c4f097132af05c99046887226017",
".git/objects/df/7d2dcb89ab89da87467c0e1059b38c8d8f9296": "a44162ff357b024e4638ab18a9bb01c7",
".git/objects/9b/9191846fc1e845b528f13fd4a7a51f3202a8ca": "26f8ca326a4394266b635d24fe4af354",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/38/aec5895acce963c6c9de54457e0969f15857df": "7f0849466b2a0402413d3d2437f3774c",
".git/objects/c8/3ccab0011cd40bec9cecc74a2eaa94560f1473": "fee912666852136975d0e2ee7f94971c",
".git/objects/a8/dee72d2bce28e0496da893349abe2e9f37294b": "0a3b2b96578fe0457ef0ac79aca7e2f6",
".git/objects/cc/862459d636be68d3bf1748fc9c9de3c9c688a8": "4f0d5c2ad60db2ecb3a78bf981783302",
".git/objects/71/3f932c591e8f661aa4a8e54c32c196262fd574": "66c6c54fbdf71902cb7321617d5fa33c",
".git/objects/8c/fcb7d9660b874182433b4a5c4c4856d72872fa": "c265b4e23dad0f571b184dfb2bf17fac",
".git/objects/20/cb2f80169bf29d673844d2bb6a73bc04f3bfb8": "b807949265987310dc442dc3f9f492a2",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/66/3a83c9325a8ee7508bb4935befa69e036bc56a": "21811f4bf281d610a8602d89b8afde12",
".git/objects/49/adebdb511c8c293b28db3f6792e5bac28cdc32": "ba6a3971e7f06834fd6ec3844372ce17",
".git/objects/a6/ec0b0c329c76e110d61c3eb6c4b96d63db783e": "fc2315303a91385bd966ed2b4cd371c7",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/b3/ebbd38f666d4ffa1a394c5de15582f9d7ca6c0": "23010709b2d5951ca2b3be3dd49f09df",
".git/objects/42/1a24a33d05fdb857478137b4595c896eb2e9b7": "089c282667f7386a54cbfb2083ab3ad6",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/index": "e8743e0c2e7e1fe8457081c8c93f2ab4",
"main.dart.js": "4147b7ea46811e75285114f0a6744d34",
"flutter_bootstrap.js": "9a6ec7d39ce9801b52c16a768d5ed88d",
"sqflite_sw.js": "41d6f28c171e7b733ec131001e5b2db4",
"index.html": "ccc7b236cfe51b57838faaac03feade4",
"/": "ccc7b236cfe51b57838faaac03feade4",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"icons/icon-192.png": "48d3353bb9e9b2c019cc932f4efc3810",
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
