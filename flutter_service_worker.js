'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "b9002f114c4f0fffd862e87aa37dc380",
".git/config": "f762b50650d17697327a58a80fa4f9cf",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "66b79cc0e7fdf0cd756dd20274962a68",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "bf1c752ac0d8c8103dd1fe60fd143873",
".git/logs/refs/heads/main": "b939ab6c95b74c84890015820f5a6319",
".git/logs/refs/remotes/origin/main": "8b3ae6fee29b2ddc564aa68a8a03693f",
".git/objects/00/f490921f0851eba976b452404cf183fa0508a3": "7e1b721892399ffed93380b42bd38f1d",
".git/objects/01/e53a0cb0bbd99d0ed829ce90cc2f441ec280e7": "92a63b525347312d6c7c5b4681e95d99",
".git/objects/10/e6131fed335b5d90f98933bc1bcb50196faa8c": "6cb052985c5280b571641f14bce17129",
".git/objects/27/35502de19eca271505636702137be068d760f0": "71f35d80bbe5e1bb01a7f7f8ba4541e7",
".git/objects/27/6c06a649eca29aa86143a23e3cfe2e3d6325d2": "1dc1366596ae0cc54a9b664a6143c7f0",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/39/803a63948a3f70a61b88192eb2665dc88bc67c": "4aaf361af60e002475a242beacdda266",
".git/objects/3e/bb9436d24f005858192c67369586cbb01e1bcf": "39ee6a85211c837234c0af6ab55b9ee8",
".git/objects/44/3bc14d148109bae2b42adecbda4fad3609a978": "d31e8830c388bf62fe39579593b3c382",
".git/objects/46/dd974da186d74eaedac4a70d1ac800e069b898": "39e5684e70ffa55dba578993b024f49b",
".git/objects/4a/9423a732c9992690c70ba7ecb1055ad29a6369": "e509610f5ae3e604b903f5db1a9d0d4b",
".git/objects/59/484dbb642117da7af57e87d66266e0a84efa16": "3e9ec8b1343b04e2c696631c87ac2413",
".git/objects/5d/036ae67da4012d816bc687b2a4940bb522b376": "0b227f22b9351f556ef2a255efda1a8f",
".git/objects/5e/59fb8bbe9daa87f2bed07d5e3cb0f429072671": "e685f2f731a26a7e9d8b051318ec4d5e",
".git/objects/61/71467f0d44660a0b0b6c1e9c2dc712ad7b9a28": "88a81cbb0e4bce9afb08e7434f3d9a35",
".git/objects/61/9a0deb3a1091388ad4870dfe28bde256decda0": "38f185812f4acbfda343f1e3b0bc56f9",
".git/objects/63/1f424519aeb20b2dd8d480a2864cddcf7292e9": "5e90d0b17172aa647c39233e31f6a727",
".git/objects/64/7e9e1e41c3e0603855fd8818c83fe10390d60a": "1a51b6e911533448ab78ddd45a254db0",
".git/objects/65/ed525d8485557c04128e300f1260452af888c9": "1688a6d10d3d737c073180a6155c59cf",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/83/b15e917e59c161dd54f77dd27cd6bbc58142f3": "104b2bf6507fe3c04323d15780310870",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/9a/0b109c90017b0213b5e21d6e23c5be20f392ae": "4eaf29838283e303c98f2d178188cae2",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a2/b1555859caba88e305581fe93bcec45229d5e8": "50c78ce5cd6f46df4b38e39da07df189",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ad/f97a5d71f806c1475c37ed813c124b2913d244": "f3fb31734aba67fbf91c5c234170cbf6",
".git/objects/b3/ef07f4920e1cc6873e0919ada3574aabaeb354": "03036b7dbb037873c83e88023b2b53e6",
".git/objects/b4/0e4d43877bfab0a138f541cc9c078cdd3895a5": "d90b174c6059a2e991d3ae2526c5ebd2",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bc/1fbc41948a706e5e509f46952b32b0c5cf52c7": "b131b5f01186ecc044a7bb07d25af2fd",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d9/7289071e43d4b63af5328331afab1f221873a7": "2fe7caaebbe9cb33d97bdbe5111bf5f4",
".git/objects/df/6e04b009b7b966a456af61680f5bb74f29be6b": "0b80b0da7ed6f16d06a96bec59405331",
".git/objects/e4/f751b4ef4cf5b65a94594b41e8073dc26e78b0": "3742ccd64e375294669902bfe83c6e12",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/186f005ebe86c0dda295b798af84d75f2da6bd": "8273d28921807939bdba806a5d59c066",
".git/objects/f4/4381b59dfb3e966df9478d22b8a3336749ceaf": "5f7160eb00c3f1173cad3ec68253795c",
".git/objects/f5/d350010857ed8efb5be12c080a72d0836353ab": "7cd719f1b316e800aafd5a5f4ac02c0a",
".git/objects/fb/d8974e522fd3053d1d2c61a483813fc2736eb7": "8d9f15fb2f41f7e9ecfaca3e1a868cde",
".git/objects/fe/180059b060d7604773c175e76807b33a960265": "c57d5a63bb49f9418b2e316618d3001a",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/objects/ff/24a85129c51e614389add846aeabe7ba709542": "d89320e1ec6eebd3d3eb8d21baa244a6",
".git/objects/ff/98cf2b11a33f1cb7b24b42dc27f2634faea746": "0b58502e9a91d08b91a86db847ccc564",
".git/refs/heads/main": "d6bd3de91d0ca15333afeac134ce212c",
".git/refs/remotes/origin/main": "d6bd3de91d0ca15333afeac134ce212c",
"assets/asset/image/background.jpg": "912c3e9e346c170565a9b4c49485fca1",
"assets/asset/image/binocular.png": "42035284aa1e47f13030e4908bc9feee",
"assets/asset/image/cpp.png": "a15ba0c670a57fd09076b7cfde43615e",
"assets/asset/image/css.png": "707e1342a3c3d3aa0a246bde9595efe6",
"assets/asset/image/flutter.png": "bc20ac3c833cdfbb9230c8a0dc483d46",
"assets/asset/image/html.png": "64ba6d76997bc51a792f321deda40db4",
"assets/asset/image/js.png": "c7140ae897077ae303aa769001cd0619",
"assets/asset/image/profileimg.jpg": "83348c51a1d7f291e3c45ab4804fee5f",
"assets/asset/image/smb-1.jpg": "05e2cb9582ffbdfa6fd6d49b0f68e620",
"assets/asset/image/smb-2.jpg": "573affcec1c14b45fd6153d84e0f5f48",
"assets/asset/image/smb-3.jpg": "d3546c1368859b6fe5fb513009c5b15c",
"assets/asset/MyFlutterApp.ttf": "d0fcea75f827d0f95be9e863ba2df36f",
"assets/AssetManifest.json": "59a1dc1fef8ed128bdb9f094daadf6fe",
"assets/FontManifest.json": "a2dcf4d2613e808fc43fe2fb07cdd890",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "a2455e41a9b1d592f6d4ab62a931e7bc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.ico": "835d77eae6b841068a86df3e34c6d5b1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "677e9d4055c2586595bbb41070642525",
"/": "677e9d4055c2586595bbb41070642525",
"main.dart.js": "67da4b0667742f09df582008b57314b9",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "426313f2f3133c2f20415344c4a22df3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
