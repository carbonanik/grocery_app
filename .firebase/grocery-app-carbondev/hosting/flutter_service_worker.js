'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"main.dart.js": "5c276e0c43d16e05fd7ff42a24226582",
"version.json": "960ab932e0132196df82088192fc043c",
"assets/assets/images/delivery_man.png": "ada648697237c2ea305330a201759091",
"assets/assets/images/delivery_man_masked.png": "65ad862b6a863fb17ec4eafa1c857ba8",
"assets/assets/images/undraw_On_the_way_re_swjt.png": "fbde780740c794e33845d163272d8582",
"assets/assets/images/undraw_Online_payments_re_y8f2.png": "0a5c874c60f92dbf474f5fb4d0091d65",
"assets/assets/images/undraw_online_groceries_a02y.png": "314dcdcbdf15c7474e4c4c29cb8a400b",
"assets/assets/images/logo.png": "8acee29c4619cb64377e94da6c544b7a",
"assets/assets/images/delivery_man.png.xmp": "16edf01f1e51e46d30b9831ade673134",
"assets/assets/images/delivery_man_masked.png.xmp": "8071688c45824d782e517e634fd9de2d",
"assets/assets/images/logo.png.xmp": "86c7786c620f3e0ed1157dddf1834762",
"assets/assets/images/undraw_On_the_way_re_swjt.png.xmp": "234b01dcc89080b8b616c899e30d92f4",
"assets/assets/images/undraw_Online_payments_re_y8f2.png.xmp": "3a2ae83acd60acc55fd2e9dd7dc481e6",
"assets/assets/images/undraw_online_groceries_a02y.png.xmp": "a82f9a113ccb2e186f443e5bb6bfaf68",
"assets/assets/images/fruit/apple.png": "dc18a1fea73e6472f11cda86054829b4",
"assets/assets/images/fruit/banana.png": "2b4b6e9e403d4fc8856855912c93bc88",
"assets/assets/images/fruit/blueberries.png": "a4e1d62e185a423ea5ba0605c3657995",
"assets/assets/images/fruit/guava.png": "49c0b66e43f934281f8f645246c1685a",
"assets/assets/images/fruit/mango.png": "c7a36376e8ae6de78ee30ec7f5a02b70",
"assets/assets/images/fruit/orange.png": "725bddd818212a7b45d9a40bc1f9cc08",
"assets/assets/images/fruit/pear.png": "95c1c0b54e6216dfc1c82d44dc5d2478",
"assets/assets/images/fruit/pineapple.png": "a2ecc9ac1a7866fc5a430a679211d96d",
"assets/assets/images/fruit/raspberries.png": "86ab5bb62f50a7d09fc9a4f2cfee451c",
"assets/assets/images/fruit/watermelon.png": "c092acb55aa2b2996e7834673f1d39f3",
"assets/assets/images/fruit/apple.png.xmp": "1f82a0630c7310185b167cad4c0f7557",
"assets/assets/images/fruit/banana.png.xmp": "7b84addec8be0ce22f7c0e3bd3b45a64",
"assets/assets/images/fruit/blueberries.png.xmp": "3a95f25b1c024dd299ebd4a70b4cf311",
"assets/assets/images/fruit/guava.png.xmp": "9e50aa302b61df187850f9ce05391805",
"assets/assets/images/fruit/mango.png.xmp": "f87adf98308a6d371bf84da156fddb41",
"assets/assets/images/fruit/orange.png.xmp": "b2450351e73d6e5fcce3f078c61d47ad",
"assets/assets/images/fruit/pear.png.xmp": "1e1b68b8515dc6cf76098b811f6db0da",
"assets/assets/images/fruit/pineapple.png.xmp": "654456372fcb6aaccb5829e258c35479",
"assets/assets/images/fruit/raspberries.png.xmp": "fd2d5279d497b97b5dcd5979509eb631",
"assets/assets/images/fruit/watermelon.png.xmp": "1e445f12fc9a334fde782dec4578b6fc",
"assets/assets/fonts/dmsans/DMSans_18pt-Black.ttf": "a7ed47a6e7f1f3b81eb516b8eaa219f0",
"assets/assets/fonts/dmsans/DMSans_18pt-BlackItalic.ttf": "e58ad6dc58b90e53e946cc23180e234c",
"assets/assets/fonts/dmsans/DMSans_18pt-Bold.ttf": "c8921dc5af99df709bcb28663d5a4bcc",
"assets/assets/fonts/dmsans/DMSans_18pt-BoldItalic.ttf": "f3dab13f3b5a4d269f8aee46030288cd",
"assets/assets/fonts/dmsans/DMSans_18pt-ExtraBold.ttf": "497bf51548c554db9208c24364f082cc",
"assets/assets/fonts/dmsans/DMSans_18pt-ExtraBoldItalic.ttf": "ff6f5dc34c2c732bfa708540ec5503db",
"assets/assets/fonts/dmsans/DMSans_18pt-ExtraLight.ttf": "5a56bef7f47aebc16899a37a6f46da84",
"assets/assets/fonts/dmsans/DMSans_18pt-ExtraLightItalic.ttf": "5a38e34650d2005c73fccca6e87b5aef",
"assets/assets/fonts/dmsans/DMSans_18pt-Italic.ttf": "ae48877f4ab8b7a726522c7828d9ea89",
"assets/assets/fonts/dmsans/DMSans_18pt-Light.ttf": "10fcb29f10a9f3d1f04baa85ec083e3c",
"assets/assets/fonts/dmsans/DMSans_18pt-LightItalic.ttf": "8046c8bf7d580122b58689d03d2b3d60",
"assets/assets/fonts/dmsans/DMSans_18pt-Medium.ttf": "5547b9eb99775175ac32fb4c4ef324d2",
"assets/assets/fonts/dmsans/DMSans_18pt-MediumItalic.ttf": "2c725400fcb2193ec0a35cadbda9b862",
"assets/assets/fonts/dmsans/DMSans_18pt-Regular.ttf": "e483dd51edaa05b24bc4f8762685832e",
"assets/assets/fonts/dmsans/DMSans_18pt-SemiBold.ttf": "e7575b937a064acae8f0bce406db9cab",
"assets/assets/fonts/dmsans/DMSans_18pt-SemiBoldItalic.ttf": "3b9306515502bf965f965a19d82292d5",
"assets/assets/fonts/dmsans/DMSans_18pt-Thin.ttf": "7808b020701564780e93e24fcf268e83",
"assets/assets/fonts/dmsans/DMSans_18pt-ThinItalic.ttf": "bb82d1381c95bf1da225717fe8a551fe",
"assets/assets/fonts/dmsans/DMSans_24pt-Black.ttf": "14f750867a7070248d691704ea3e36e9",
"assets/assets/fonts/dmsans/DMSans_24pt-BlackItalic.ttf": "7d7e381f99242f2a2327a2a629f030aa",
"assets/assets/fonts/dmsans/DMSans_24pt-Bold.ttf": "541d84af93ed55a92a75644198c26ca5",
"assets/assets/fonts/dmsans/DMSans_24pt-BoldItalic.ttf": "a7c8ce7a252b389eee725f5f2a31d23d",
"assets/assets/fonts/dmsans/DMSans_24pt-ExtraBold.ttf": "55019fc721ca3406150b3be5a3914187",
"assets/assets/fonts/dmsans/DMSans_24pt-ExtraBoldItalic.ttf": "2328c65e54dc10ae882ff5c7d8b4f423",
"assets/assets/fonts/dmsans/DMSans_24pt-ExtraLight.ttf": "da1e27d414407d763fda3fc2e2cd8599",
"assets/assets/fonts/dmsans/DMSans_24pt-ExtraLightItalic.ttf": "a566db711b006b3e160dfac710503ffc",
"assets/assets/fonts/dmsans/DMSans_24pt-Italic.ttf": "a5ffc9ce7a57f81cd491038d359beeab",
"assets/assets/fonts/dmsans/DMSans_24pt-Light.ttf": "3f6913dc6c10997cfef86673c0bbb043",
"assets/assets/fonts/dmsans/DMSans_24pt-LightItalic.ttf": "9319e9d8f89f9b11f888b88e20b70f86",
"assets/assets/fonts/dmsans/DMSans_24pt-Medium.ttf": "0d8e925cedc374df2836212a6c8a1599",
"assets/assets/fonts/dmsans/DMSans_24pt-MediumItalic.ttf": "47ded888d9013659b83845529da38b30",
"assets/assets/fonts/dmsans/DMSans_24pt-Regular.ttf": "bdb16e39a30a66a70ab31ff85d6cbee0",
"assets/assets/fonts/dmsans/DMSans_24pt-SemiBold.ttf": "816685ee69346f9583b5433f0992db80",
"assets/assets/fonts/dmsans/DMSans_24pt-SemiBoldItalic.ttf": "f483f6c07ba8d778859adaad284a260c",
"assets/assets/fonts/dmsans/DMSans_24pt-Thin.ttf": "4d758b260d0bd0d8bdbc9452d476cf52",
"assets/assets/fonts/dmsans/DMSans_24pt-ThinItalic.ttf": "31d4168428c3f3f62ff2afade6326070",
"assets/assets/fonts/dmsans/DMSans_36pt-Black.ttf": "267ffe5c447881d277fed359c04b1ef5",
"assets/assets/fonts/dmsans/DMSans_36pt-BlackItalic.ttf": "c1b3bfa1581f229b0656ec6efc1946fa",
"assets/assets/fonts/dmsans/DMSans_36pt-Bold.ttf": "2cffdac98fa57174d7073dee1a3f3342",
"assets/assets/fonts/dmsans/DMSans_36pt-BoldItalic.ttf": "6b0ca2fcfb24fd13f78c27460dad4280",
"assets/assets/fonts/dmsans/DMSans_36pt-ExtraBold.ttf": "da7f856e058ded6288f9ec40b8548cc3",
"assets/assets/fonts/dmsans/DMSans_36pt-ExtraBoldItalic.ttf": "8ae7ca71276bee2031d2aec5c58bff5b",
"assets/assets/fonts/dmsans/DMSans_36pt-ExtraLight.ttf": "4beb1d00d70e5e9a937737ee64898c57",
"assets/assets/fonts/dmsans/DMSans_36pt-ExtraLightItalic.ttf": "4ae9372aaf7884848488b5715e27dab4",
"assets/assets/fonts/dmsans/DMSans_36pt-Italic.ttf": "7b4639249823fc109553f267bc2879b5",
"assets/assets/fonts/dmsans/DMSans_36pt-Light.ttf": "56debe773baadf5ea1bc3007dbfba87c",
"assets/assets/fonts/dmsans/DMSans_36pt-LightItalic.ttf": "0ff17b2671fe7e1222804119d179a0c3",
"assets/assets/fonts/dmsans/DMSans_36pt-Medium.ttf": "cea4d1b48afc96bb009259e30729cb1f",
"assets/assets/fonts/dmsans/DMSans_36pt-MediumItalic.ttf": "0bc975585fa97ca96cf64dcf1485f894",
"assets/assets/fonts/dmsans/DMSans_36pt-Regular.ttf": "acb8033b0e08a6536d959fe119c54797",
"assets/assets/fonts/dmsans/DMSans_36pt-SemiBold.ttf": "d9fd5dc4b64239e47f274cb4773304a4",
"assets/assets/fonts/dmsans/DMSans_36pt-SemiBoldItalic.ttf": "ddb7ad02027fd430032565a5f7093777",
"assets/assets/fonts/dmsans/DMSans_36pt-Thin.ttf": "6250a43c89044dd33a8712e0c2c4b44a",
"assets/assets/fonts/dmsans/DMSans_36pt-ThinItalic.ttf": "397cdc1fc1463334099a0dc8469b38fb",
"assets/assets/fonts/dmsans/DMSans-Black.ttf": "e4442a2c1cbe59d6bb90eb3f8c950990",
"assets/assets/fonts/dmsans/DMSans-BlackItalic.ttf": "010892d88e6f0e0c83816464a2e1db4a",
"assets/assets/fonts/dmsans/DMSans-Bold.ttf": "337352e89c0a500c19e7c3a1cd83161c",
"assets/assets/fonts/dmsans/DMSans-BoldItalic.ttf": "0f6d2177fbc4e50c5cbd1e3ca7fb1626",
"assets/assets/fonts/dmsans/DMSans-ExtraBold.ttf": "ebcd8d6147f734b6b411ee296741dca6",
"assets/assets/fonts/dmsans/DMSans-ExtraBoldItalic.ttf": "611c8acc2d275c32f3a2fb5d24c9d8b6",
"assets/assets/fonts/dmsans/DMSans-ExtraLight.ttf": "fec3b8ae381cd5a5df1f5c4bf1f3dcac",
"assets/assets/fonts/dmsans/DMSans-ExtraLightItalic.ttf": "ac0a5cf03c0c0157f82e6729a1ceac30",
"assets/assets/fonts/dmsans/DMSans-Italic.ttf": "5932d80bc9ab80212b075dfdeaa85f39",
"assets/assets/fonts/dmsans/DMSans-Light.ttf": "e7520627eb609ab1e02dd88f972a3b2b",
"assets/assets/fonts/dmsans/DMSans-LightItalic.ttf": "c7ae8efdba4bcf2c847894db2ae5cfc2",
"assets/assets/fonts/dmsans/DMSans-Medium.ttf": "6244219cea1110e6ec49e950f070acf8",
"assets/assets/fonts/dmsans/DMSans-MediumItalic.ttf": "c42434fa9ab2e23c864e1a994ecbd6f1",
"assets/assets/fonts/dmsans/DMSans-Regular.ttf": "0305ad7453af42d8f036dd29294ae5c3",
"assets/assets/fonts/dmsans/DMSans-SemiBold.ttf": "41de6d553ba4b1825e9cf023e97e2ee4",
"assets/assets/fonts/dmsans/DMSans-SemiBoldItalic.ttf": "efcdd751eff609bda2f68f0943ab865f",
"assets/assets/fonts/dmsans/DMSans-Thin.ttf": "dc3195b079d33dfa16de299901913db8",
"assets/assets/fonts/dmsans/DMSans-ThinItalic.ttf": "a4c88b00713307f76c8b0ce450e54676",
"assets/packages/csc_picker/lib/assets/country.json": "11b8187fd184a2d648d6b5be8c5e9908",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/fonts/MaterialIcons-Regular.otf": "c12cc501b8f3d563355e2918ac01f01a",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.json": "0b9a6b21be9a52a9733dbebdd9859406",
"assets/AssetManifest.bin": "030ab274f1b7cd1e510a7d6159c4f87b",
"assets/AssetManifest.bin.json": "15c359a393e353a9f4c519b546902c0d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/NOTICES": "8cd3fc58323be2a6211c5baec1f7c1ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "e608c200285893891f4ea05225ff8c59",
"index.html": "7e1472a1bdd0458e616e0749fe09ac8b",
"/": "7e1472a1bdd0458e616e0749fe09ac8b",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png.xmp": "66824fa3c843b669828c8ca7fb129bf3",
"icons/Icon-512.png.xmp": "07fbb3365f84261d654a4cd76f2f0a58",
"icons/Icon-maskable-192.png.xmp": "464888bcbccfcd9b9c9097afca852e70",
"icons/Icon-maskable-512.png.xmp": "5ce6cb91817343265c83fb5ad49709bd",
"favicon.png.xmp": "54f2fbc3188813b61acce83aba856c40"};
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
