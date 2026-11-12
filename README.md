# DropPool 🪂

![DropPool](https://img.shields.io/badge/Version-8.3-blue) ![License](https://img.shields.io/badge/License-MIT-green) ![Platform](https://img.shields.io/badge/Platform-Kick%20%7C%20Twitch-green)

🇹🇷 **DropPool**, hem **Kick** hem de **Twitch** ile tam uyumlu çalışan (ister tek platformda, ister iki platform aynı anda ortak olarak kullanılabilen) açık kaynaklı ve interaktif bir OBS aracıdır. İzleyicilerinizin sohbete (chat) belirlediğiniz komutu yazarak ekrandaki havuza kendi isimleriyle paraşütle atlamasını sağlar.

🇬🇧 **DropPool** is an open-source, interactive OBS overlay fully compatible with both **Kick** and **Twitch** (usable on a single platform or both platforms simultaneously). It allows your viewers to drop into a pool with their custom parachutes and names by typing a command in the chat.

---

## 🚀 Özellikler / Features

- 🟢🟣 **Kick & Twitch Tam Uyumluluk (Kick & Twitch Compatibility):** Kurulum ekranından **Kick**, **Twitch** ya da **Kick + Twitch** seçilebilir. Kick + Twitch modunda her iki platformun izleyicileri aynı oyunda, aynı sıralamada ve aynı toplu atlayış kuyruğunda buluşur. (Works seamlessly with Kick, Twitch, or both platforms combined in the same game, leaderboard, and group-drop queue.)
- 🤖 **Resmi Kick Chatbot Entegrasyonu (Kick Chatbot v8.3):** DropPoolBot ile sohbette canlı liderlik sıralaması (`!atlalist`), tüm zamanlar rekorları (`!atlatop`), kullanıcıya özel genel sıralama ve atlayış karnesi (`!atlacount`), yardım rehberleri (`!atlahelp`) ve otomatik toplu atlayış anonsları.
- 🎨 **Özelleştirilebilir Temalar (Custom Themes):** İlkbahar, Sonbahar, Kış ve Cehennem temaları. (Spring, Autumn, Winter, Hell)
- 🪂 **Renk Seçenekleri (Parachute Colors):** İzleyiciler için 8 farklı havalı paraşüt rengi. (8 different parachute colors)
- 😂 **Kick & Twitch Emote Desteği:** İzleyiciler komutla birlikte bir Kick ya da Twitch emote'u yazdığında o emote ekranda düşen karakter olur! GIF/WEBP dahil (Kick). (Kick & Twitch emotes become the falling character)
- 📐 **Oyun Boyutu & Sıralama Renk Seçenekleri:** Normal veya Küçük oyun boyutu seçeneği ve Atla Sıralaması için 3 farklı renk teması (Klasik, Renkli, Tümü Beyaz). (Normal/Small game size options and 3 leaderboard color themes: Classic, Colorful, All White.)
- ⏱️ **Spam Koruması (Cooldown):** Chat spamını önlemek için kullanıcı bazlı bekleme süresi ayarı. (Customizable viewer cooldowns)
- 🏆 **Anlık Sıralama (Live Leaderboard):** O yayın oturumuna ait en yüksek puanları gösteren dinamik liderlik tablosu. (Session leaderboard)
- 📊 **Kalıcı İstatistik Merkezi (Persistent Stats):** Tüm zamanların atlayış sayıları, isabet oranları, toplam ve rekor puanlar ile son atlayış tarihi/saati kalıcı olarak saklanır.
- 🪖 **Çoklu Atlayış Modları:** Dive, Drunk, Tarzan, Fake ve Random gibi birbirinden farklı 5 özel atlayış modu.
- 🌊 **Zemin Şeffaflığı:** İsteğe bağlı olarak zemin görselleri gizlenip sadece havuz görünür hale getirilebilir.
- ✨ **Karakter Efekti (Trail Effect):** Düşen her karakterin arkasında onu takip eden ışıltılı ve renkli bir meteor izi efekti görünür. Ayarlardan kapatılabilir. (Every falling character leaves a glowing meteor trail. Can be disabled in settings.)
- 🌐 **İki Dil Desteği (Bi-lingual):** Türkçe ve İngilizce kurulum paneli ve istatistik ekranı. (TR/EN Setup Panel & Stats Screen)


---

## 📁 Dosyalar / Files

| Dosya | Açıklama (TR) | Description (EN) |
|---|---|---|
| `panel.html` | Kurulum ve ayar paneli. Buradan bağlantılar oluşturulur. | Setup and configuration panel. Links are generated here. |
| `index.html` | Ana oyun overlay'i. OBS'e tarayıcı kaynağı olarak eklenir. | Main game overlay. Added to OBS as a browser source. |
| `siralama.html` | Oturuma özel anlık skor tablosu. OBS'e ayrı kaynak olarak eklenir. | Session-based live leaderboard. Added as a separate source in OBS. |
| `log.html` | Kalıcı istatistik ve olay geçmişi merkezi. OBS paneli veya tarayıcı kaynağı olarak kullanılır. | Persistent stats & event log center. Used as an OBS dock or browser source. |

---

## 🛠️ Nasıl Kurulur? / How to Setup?

**🇹🇷 Türkçe:**
1. `panel.html` dosyasını tarayıcınızda açın.
2. Önce **Yayın Platformu**'nu seçin: **Kick** (varsayılan), **Twitch** ya da **Kick + Twitch**. Seçime göre **Kick** ve/veya **Twitch kanal adınızı** girin. Ardından tetikleyici komutu (Örn: `!atla`) ve bekleme süresini ayarlayın.
3. İstediğiniz temaları, oyun boyutunu, sıralama renk stilini ve aktif paraşüt renklerini seçin.
4. **"Bağlantıları Oluştur"** butonuna tıklayın.
5. Oluşan **"1. Ana Oyun Ekranı"** linkini kopyalayın ve OBS'te yeni bir **Tarayıcı (Browser)** kaynağı oluşturarak URL kısmına yapıştırın. (Genişlik: 1920, Yükseklik: 1080 olmalıdır).
6. ⚠️ **Çoklu Sahne Kullanımı (Önemli):** Oyunu OBS'te **birden fazla sahnede** kullanacaksanız, aynı anda birden fazla kaynağın arka planda çakışmaması için diğer sahnelere eklerken yeni kaynak oluşturmak yerine **"Var Olanı Ekle (Add Existing)"** seçeneğiyle **tek kaynak** olarak ekleyin **VEYA** her Tarayıcı (Browser) kaynağının özelliklerinden **"Görünür olmadığında kaynağı kapat" (Shutdown source when not visible)** seçeneğini mutlaka işaretleyin.
7. İsteğe bağlı: **"2. Sıralama Ekranı"** linkini de OBS'e ekleyip ekranın köşesine yerleştirin.
8. İsteğe bağlı: **"3. İstatistik ve Geçmiş Merkezi"** (`log.html`) linkini OBS'te ya **Tarayıcı Kaynağı** olarak ya da **Paneller → Özel Tarayıcı Yuvaları** kısmına ekleyin. Bu linki eklemek oyunu değiştirmez; sadece kim kaç kez atladı, rekor puanlar, canlı olay akışı ve Top 10 tablosunu görmenizi sağlar. Veriler ana oyun ekranı açıkken zaten tarayıcının yerel depolamasına kaydedilir; 3. link sadece bunları gösterir ve oyun ekranıyla aynı OBS/tarayıcı profilinde açılmalıdır.
9. Chat'inize komutu yazın ve karakterlerin düşüşünü izleyin!

**🇬🇧 English:**
1. Open the `panel.html` file in your browser.
2. Choose your **Streaming Platform**: **Kick** (default), **Twitch** or **Kick + Twitch**. Enter your **Kick** and/or **Twitch channel name** accordingly. Then set the trigger command (e.g. `!drop`) and cooldown duration.
3. Select your desired themes, game size, leaderboard color style, and active parachute colors.
4. Click the **"Generate Links"** button.
5. Copy the **"1. Main Overlay"** link and add a new **Browser Source** in **OBS Studio** (Width: 1920, Height: 1080).
6. ⚠️ **Multiple Scenes Usage (Important):** If you use the overlay across **multiple scenes** in OBS, either add the same single Browser Source to other scenes using **"Add Existing"** **OR** make sure **"Shutdown source when not visible"** is checked in the Browser Source properties so multiple instances do not run simultaneously in the background.
7. Optional: Add the **"2. Leaderboard Screen"** link to OBS and position it in a corner.
8. Optional: Add the **"3. Stats & History Center"** (`log.html`) as a **Browser Source** or via **Docks → Custom Browser Docks**. Adding it does not change the game; it only lets you see who jumped how many times, record scores, the live event log and the Top 10 table. The data is saved to the browser's local storage while the main overlay is open anyway; the 3rd link only displays it and must be opened in the same OBS/browser profile as the overlay.
9. Type your command in the chat and watch the characters fall!

---

## 🎮 Komutlar / Chat Commands

**🇹🇷 İzleyici ve Bot Komutları:**

| Komut | Tür | Açıklama |
|---|---|---|
| `!atla` | Oyun | Standart paraşütlü atlayış. |
| `!atla duo @kullanıcı` | Oyun | **İkili atlayış:** Sen ve etiketlediğin kişi iple bağlı olarak birlikte atlarsınız. |
| `!atla [emote]` | Oyun | Komutla birlikte atılan Kick/Twitch emote'u ekranda düşen karakter olur. |
| `!atla dive` | Oyun | Helikopterden paraşütsüz, havada dönerek çılgın bir dalış yapar. |
| `!atla drunk` | Oyun | Sarhoş gibi rastgele sağa sola savrularak aşağı düşer. |
| `!atla tarzan` | Oyun | Uzun bir iple sarkaç hareketi yaparak uçar ve havuza dalar. |
| `!atla fake` | Oyun | Tam inecekken paraşütü bırakıp jetpack ile havaya uçar ve kaybolur. |
| `!atla random` | Oyun | Yukarıdaki modlardan birini rastgele seçer ve uygular. |
| `!atlacount` veya `!atlacount @kullanıcı` | Bot | Kullanıcının genel sıralamadaki sırasını, toplam atlayış sayısını, isabet oranını (%) ve rekor puanını yazar (Takma ad: `!atlarank`). |
| `!atlalist` | Bot | O anki canlı yayının ilk 5 sıralamasını sohbete listeler. |
| `!atlatop` | Bot | Tüm zamanların en yüksek rekoruna sahip ilk 10 oyuncusunu listeler. |
| `!atlakomutlar` / `!atlakomutları` | Bot | Botu ve oyunu tetikleyen tüm interaktif komutları sohbete döker. |
| `!atlahelp` (veya `!help`) | Bot | Yayıncı yardım komutlarını listeler (Herkes yazabilir). |
| `!crossweq` | Bot | DropPool Kurulum Paneli bağlantısını sohbete gönderir. |

**🇹🇷 Yayıncı Komutları *(Sadece Yayıncı)*:**

| Komut | Açıklama |
|---|---|
| `!droppoolbot enable` / `disable` | DropPoolBot'u yayında açar veya kapatır. |
| `!droptogether [saniye]` | **Toplu Atlayış (Uçak) Modunu** başlatır. Süre verilirse süre bitince, verilmezse yayıncı `!atla` yazdığında uçak havalanır. Bot sohbete otomatik sıra anonsu geçer. |
| `!meteor [saniye]` | **Meteor Yağmuru Modunu** başlatır. Herkes paraşütsüz alevler içinde göktaşı gibi düşer. Bot sohbete otomatik anons geçer. |
| `!resetdrop` | Bekleme sürelerini sıfırlar, varsa aktif toplu atlayışı iptal eder ve sahneyi temizler. |
| `!resetdroplist` / `!resetlist` | Canlı yayın ilk 5 sıralamasını (overlay ve bot) anında sıfırlar. |
| `!droptogetherhelp` | Toplu atlayış modunun nasıl kullanıldığını açıklar. |
| `!meteorhelp` | Meteor modunun nasıl kullanıldığını açıklar. |
| `!resetdrophelp` | Sıfırlama komutunu ve OBS kaynak yenileme ipucunu açıklar. |

---

**🇬🇧 Viewer & Bot Commands:**

| Command | Type | Description |
|---|---|---|
| `!drop` | Game | Standard parachute drop. |
| `!drop duo @username` | Game | **Duo drop:** Jump together tied with a rope; both score separately. |
| `!drop [emote]` | Game | Kick/Twitch emote becomes the falling character on screen. |
| `!drop dive` | Game | Drops from a helicopter without a parachute, spinning wildly. |
| `!drop drunk` | Game | Falls down swaying left and right randomly like a drunk jumper. |
| `!drop tarzan` | Game | Swings in on a long rope like a pendulum before dropping. |
| `!drop fake` | Game | Ditches parachute at the last second and blasts off with a jetpack. |
| `!drop random` | Game | Randomly selects and applies one of the modes above. |
| `!dropcount` or `!dropcount @user` | Bot | Displays overall rank, total drops, hit rate %, and record score (Alias: `!droprank`). |
| `!droplist` | Bot | Lists the top 5 players for the current live stream session. |
| `!droptop` | Bot | Lists the all-time top 10 best scores. |
| `!dropcommands` | Bot | Posts all game and bot commands into chat. |
| `!drophelp` (or `!help`) | Bot | Displays broadcaster help menu (can be used by anyone). |
| `!crossweq` | Bot | Posts the setup panel URL into chat. |

**🇬🇧 Streamer Commands *(Streamer Only)*:**

| Command | Description |
|---|---|
| `!droppoolbot enable` / `disable` | Turns DropPoolBot on or off in chat. |
| `!droptogether [seconds]` | Starts **Plane Queue Mode**. When timer expires (or streamer drops), everyone drops simultaneously from a giant plane. Bot announces queue in chat. |
| `!meteor [seconds]` | Starts **Meteor Shower Mode**. Everyone crashes down like fiery meteors. Bot announces queue in chat. |
| `!resetdrop` | Resets all viewer cooldowns, cancels ongoing group drops, and clears the screen. |
| `!resetdroplist` / `!resetlist` | Instantly resets the live top 5 leaderboard (overlay and bot). |
| `!droptogetherhelp` | Explains how to use the plane drop mode. |
| `!meteorhelp` | Explains how to use the meteor shower mode. |
| `!resetdrophelp` | Explains resetdrop and OBS browser source refresh tips. |

---

## 🤖 Resmi Kick Chatbotu (v8.3) / Official Kick Chatbot

🇹🇷 **DropPoolBot Nasıl Kullanılır?**
1. Kick sohbetinizde bota moderatör yetkisi verin: `/mod DropPoolBot`
2. Botu açmak için sohbete yazın: `!droppoolbot enable`
3. Kapatmak istediğinizde yazın: `!droppoolbot disable`
4. Bot tamamen resmi Kick Webhook API'si ve Cloudflare Edge altyapısı üzerinde çalışır; sıfır kota tüketir ve sıfır gecikmeyle yanıt verir.

🇬🇧 **How to Use DropPoolBot?**
1. Give moderator privileges to the bot in your Kick chat: `/mod DropPoolBot`
2. Turn on the bot by typing: `!droppoolbot enable`
3. Turn off whenever you want by typing: `!droppoolbot disable`
4. Powered by the official Kick Webhook API and Cloudflare Edge; uses zero database quota and responds instantly.

---

## 📊 İstatistik Sistemi / Stats System

`log.html` iki ayrı sekme içerir:

**🇹🇷 Türkçe:**
- **Oyuncu İstatistikleri** — Veriler tarayıcının `localStorage` alanında kalıcı olarak saklanır ve oturumlar arasında korunur. Liste şahsi rekora göre (yüksekten düşüğe) sıralanır.
  - **Toplam Atlayış:** Oyuncunun toplam atlayış sayısı.
  - **İsabet Oranı (HIT SCORE):** Havuza başarıyla inen atlayışların yüzdesi.
  - **Toplam Puan:** Tüm başarılı atlayışlardan biriktirilen kümülatif puan.
  - **Rekor Puan:** Tek bir atlayışta alınan en yüksek puan (0–100).
  - **Son Atlayış:** Oyuncunun en son atlayış yaptığı tarih ve saat.
- **Canlı Olay Akışı (Log):** Son 500 olayı (atlayış, puan, sistem mesajları) zaman sırasıyla listeler.
- **Tüm Verileri Sıfırla:** Özel bir onay modalı ile verileri sıfırlar. OBS Browser Source etkileşim (Interaction) modunda da tam olarak çalışır.

**🇬🇧 English:**
- **Player Stats** — Data is persistently stored in the browser's `localStorage` and survives across sessions. The list is sorted by personal best score (highest to lowest).
  - **Total Drops:** Total number of drops by the player.
  - **HIT SCORE:** Percentage of drops that successfully landed in the pool.
  - **Total Score:** Cumulative score accumulated from all successful drops.
  - **Best Score:** The highest score from a single drop (0–100).
  - **Last Drop:** Date and time of the player's most recent drop.
- **Live Event Log:** Lists the last 500 events (drops, scores, system messages) in chronological order.
- **Reset All Data:** Resets all data via a custom confirmation modal. Works fully in OBS Browser Source Interaction mode.

---

## 🎯 Puanlama Sistemi / Scoring System

🇹🇷 Havuzun tam merkezine düşen oyuncu **100 puan** alır. Merkezden kenarlara doğru uzaklaştıkça puan **0'a** kadar düşer. Havuzu ıskalayanlar puan almaz. Puanlar hem anlık sıralama tablosuna hem de kalıcı istatistiklere kaydedilir.

🇬🇧 A player who lands exactly in the center of the pool receives **100 points**. The score decreases toward **0** as the landing moves toward the edges. Missing the pool results in no points. Scores are recorded in both the live leaderboard and the persistent stats.

---

## 💻 Geliştirici / Developer
Developed with ❤️ by **CrossWeq**

İletişim / Contact: [crosweq204@gmail.com](mailto:crosweq204@gmail.com)


