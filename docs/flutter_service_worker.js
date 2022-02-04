'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "8c157f7191c69c5bc2f815ddf40f0f4b",
"assets/assets/assets/Conversas.png": "58ba01945dca35cfa45536aa1bbe287f",
"assets/assets/assets/loading.json": "1e50a17487aa8b4fc33689334e16f0b4",
"assets/assets/assets/Loja_de_Bolsas.png": "a5762349e10085c0d1913a3030735f5d",
"assets/assets/assets/Loja_de_Flores.png": "7acafcea4c127f04ba0cb2652c4c707f",
"assets/assets/assets/Loja_de_Roupas.png": "0b55a1428bb59eb8b4436d48aa221d00",
"assets/assets/assets/Viagens.png": "753e36d183c246be2aea04d9e94b0057",
"assets/assets/assets_app_conversas/greg.jpg": "b779eca12905edb571bcf6ddaad660b5",
"assets/assets/assets_app_conversas/james.jpg": "402022abfd4b631c3093c0f2054e4a06",
"assets/assets/assets_app_conversas/john.jpg": "51a3470387263a30e35e4414eef1f7d4",
"assets/assets/assets_app_conversas/olivia.jpg": "4cdcd080fdd00244b5db3e33a86ab1c2",
"assets/assets/assets_app_conversas/sam.jpg": "cf523967089ecc2735e2ed3b045fe938",
"assets/assets/assets_app_conversas/sophia.jpg": "3b8e96b326f7ec46ff5df0012b023586",
"assets/assets/assets_app_conversas/steven.jpg": "0f009026daa99305e0fb7335717a1594",
"assets/assets/assets_app_floricultura/icons/animated_plant.json": "d42e5d549e2374c55ef2fbede2dad1dc",
"assets/assets/assets_app_floricultura/icons/back_arrow.svg": "c35b3f97779bff7b669938acb7b7ad93",
"assets/assets/assets_app_floricultura/icons/icon_2.svg": "b74115c161dd696370af47f48c1ef148",
"assets/assets/assets_app_floricultura/icons/icon_3.svg": "cddbcb223ffa19a4d1faf8ba0aabef6a",
"assets/assets/assets_app_floricultura/icons/icon_4.svg": "4c78bde50054255c1c981a2c3aaaec04",
"assets/assets/assets_app_floricultura/icons/menu.svg": "0dd3549af7ee5b368ebcb0d8e0deb904",
"assets/assets/assets_app_floricultura/icons/search.svg": "dfc7db1dfd5bb8b26916d9226bc02bac",
"assets/assets/assets_app_floricultura/icons/sun.svg": "de21a25e2878fb1b62579a0d2cf4444a",
"assets/assets/assets_app_floricultura/images/begonia_maculata.jpg": "86185f32865a14be93c7d8e74d2a0823",
"assets/assets/assets_app_floricultura/images/bottom_img_1.png": "9f62a10df50dbac13dfe4ef6911053e3",
"assets/assets/assets_app_floricultura/images/bottom_img_2.png": "048ef6167b9d28ddf6f3c8be98d4bdfd",
"assets/assets/assets_app_floricultura/images/kalanchoe_vermelho.jpg": "13e2da8c9b1605d25a87429d5de24c13",
"assets/assets/assets_app_floricultura/images/logo.png": "86d4dc5cbadc8459349e2e75e8c3000a",
"assets/assets/assets_app_floricultura/images/orquidea_azul.jpg": "bec1fc38127b2cfcd0f08c41856bfece",
"assets/assets/assets_app_loja_bolsas/icons/add_to_cart.svg": "0eb1a5e481ee24dba9de843a9dacdde1",
"assets/assets/assets_app_loja_bolsas/icons/back.svg": "1b13e0b59c27ec75d6f5051e5d66e8d9",
"assets/assets/assets_app_loja_bolsas/icons/bag_1.svg": "63e5245b06f0a2341dba8d0d9f81014b",
"assets/assets/assets_app_loja_bolsas/icons/cart.svg": "fd320d807686c8432b2e449a583296b1",
"assets/assets/assets_app_loja_bolsas/icons/heart.svg": "1c996a5addb1570d53d2093a229b8ac8",
"assets/assets/assets_app_loja_bolsas/icons/search.svg": "654e22ab2ad459d56cff69b1e077c53f",
"assets/assets/assets_app_loja_bolsas/images/bag_1.png": "e9506b6861af2660221107684bbebd97",
"assets/assets/assets_app_loja_bolsas/images/bag_2.png": "1d5fd0aaf3e6cbf6b8fa23aed72b0523",
"assets/assets/assets_app_loja_bolsas/images/bag_3.png": "d069787fd88889b6d9c0d3b7a054e0bd",
"assets/assets/assets_app_loja_bolsas/images/bag_4.png": "0d85b194c8a5c71c60f84d899de86c31",
"assets/assets/assets_app_loja_bolsas/images/bag_5.png": "3144272695836710191b7f953cc6fb7e",
"assets/assets/assets_app_loja_bolsas/images/bag_6.png": "c51f90dc78a7bc817fd14f20d6567d94",
"assets/assets/assets_app_loja_roupas/icons/filter.png": "dd98aeee60027670fce13542a3476568",
"assets/assets/assets_app_loja_roupas/icons/search.png": "3ff846e1b7f4d829f8ad5ed7a9a3ac69",
"assets/assets/assets_app_loja_roupas/images/arrival1.png": "a64fbd7da62f51e23195f470a122e7f3",
"assets/assets/assets_app_loja_roupas/images/arrival2.png": "f9ab63246c6b48b070f669d68ba61905",
"assets/assets/assets_app_loja_roupas/images/best1.png": "caf1f617188214e64837658b6f0b62b4",
"assets/assets/assets_app_viagens/animated_airplane.json": "b5f4359ffc21db9be1f66a98ef173d81",
"assets/assets/assets_app_viagens/gondola.jpg": "689ae95c953be8371a3c997302cf688d",
"assets/assets/assets_app_viagens/hotel0.jpg": "c5737b99f507741f5f36e8db10c0e9d8",
"assets/assets/assets_app_viagens/hotel1.jpg": "bc9826c3d7c3c5128c62b916baa59aed",
"assets/assets/assets_app_viagens/hotel2.jpg": "07a77366730e5997e096c7eac049c787",
"assets/assets/assets_app_viagens/menu.svg": "0dd3549af7ee5b368ebcb0d8e0deb904",
"assets/assets/assets_app_viagens/murano.jpg": "74851df25b8f4bca02afcfe05a0b7169",
"assets/assets/assets_app_viagens/newdelhi.jpg": "56450a1054fcf15bab1f51af0fa90281",
"assets/assets/assets_app_viagens/newyork.jpg": "0b02b13a33b63100c799a803b51a748f",
"assets/assets/assets_app_viagens/paris.jpg": "6f5ad05e3583bfcdb378690cab52c4c7",
"assets/assets/assets_app_viagens/santorini.jpg": "d26bfc72030a1f0eac63ef62b9d2182a",
"assets/assets/assets_app_viagens/saopaulo.jpg": "ffd521b1a80910a94c21ffe39a664268",
"assets/assets/assets_app_viagens/stmarksbasilica.jpg": "d9dfdeebfc0b8d65bf8e519867838247",
"assets/assets/assets_app_viagens/venice.jpg": "10346f88226e7c8892e95033ba5430c0",
"assets/assets/fonts/Bevan-Regular.ttf": "c800526423a8747db3cab278dbd5244f",
"assets/assets/fonts/Neuropolitical_Rg.ttf": "d4270acd2ddf65bf084f644346e55f4c",
"assets/FontManifest.json": "9e6fcdcf3d8ca5364a7ee09ee0b47226",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "4433febc73ca5908e8f9f0e12d4e271e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b37ae0f14cbc958316fac4635383b6e8",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5178af1d278432bec8fc830d50996d6f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "aa1ec80f1b30a51d64c72f669c1326a7",
"canvaskit/canvaskit.js": "43fa9e17039a625450b6aba93baf521e",
"canvaskit/canvaskit.wasm": "04ed3c745ff1dee16504be01f9623498",
"canvaskit/profiling/canvaskit.js": "f3bfccc993a1e0bfdd3440af60d99df4",
"canvaskit/profiling/canvaskit.wasm": "a9610cf39260f60fbe7524a785c66101",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "7f01afc97be40782caf239aa860af038",
"/": "7f01afc97be40782caf239aa860af038",
"main.dart.js": "42ef48003410d8b41073d75c920b90ee",
"manifest.json": "4799dacd3311c6f6e3955e9d8bd21631",
"version.json": "0eb1bf94f7d9fe4998d7abb42d8bf229"
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
