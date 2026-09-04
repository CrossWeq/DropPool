# DropPool 🪂

![DropPool](https://img.shields.io/badge/Version-2.0-blue) ![License](https://img.shields.io/badge/License-MIT-green) ![Platform](https://img.shields.io/badge/Platform-Kick-green)

🇹🇷 **DropPool**, Kick yayıncıları için geliştirilmiş açık kaynaklı ve interaktif bir OBS aracıdır. İzleyicilerinizin sohbete (chat) belirlediğiniz komutu yazarak ekrandaki havuza kendi isimleriyle paraşütle atlamasını sağlar.

🇬🇧 **DropPool** is an open-source, interactive OBS overlay designed for Kick streamers. It allows your viewers to drop into a pool with their custom parachutes and names by typing a command in the chat.

---

## 🚀 Özellikler / Features

- 🌐 **İki Dil Desteği (Bi-lingual):** Türkçe ve İngilizce kurulum paneli ve istatistik ekranı. (TR/EN Setup Panel & Stats Screen)
- 🎨 **Özelleştirilebilir Temalar (Custom Themes):** İlkbahar, Sonbahar, Kış ve Cehennem temaları. (Spring, Autumn, Winter, Hell)
- 🪂 **Renk Seçenekleri (Parachute Colors):** İzleyiciler için 8 farklı havalı paraşüt rengi. (8 different parachute colors)
- 😂 **Kick Emote Desteği:** İzleyiciler komutla birlikte bir Kick emoteu yazdığında o emote ekranda düşen karakter olur! GIF/WEBP dahil.
- ⏱️ **Spam Koruması (Cooldown):** Chat spamını önlemek için kullanıcı bazlı bekleme süresi ayarı. (Customizable viewer cooldowns)
- 🏆 **Anlık Sıralama (Live Leaderboard):** O yayın oturumuna ait en yüksek puanları gösteren dinamik liderlik tablosu. (Session leaderboard)
- 📊 **Kalıcı İstatistik Merkezi (Persistent Stats):** Tüm zamanların atlayış sayıları, isabet oranları, toplam ve rekor puanlar ile son atlayış tarihi/saati kalıcı olarak saklanır.
- 🪖 **Çoklu Atlayış Modları:** Dive, Drunk, Tarzan, Fake ve Random gibi birbirinden farklı 5 özel atlayış modu.
- 🌊 **Zemin Şeffaflığı:** İsteğe bağlı olarak zemin görselleri gizlenip sadece havuz görünür hale getirilebilir.

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
2. **Kick Kanal Adınızı**, tetikleyici komutu (Örn: `!atla`) ve bekleme süresini ayarlayın.
3. İstediğiniz temaları ve aktif paraşüt renklerini seçin.
4. **"Bağlantıları Oluştur"** butonuna tıklayın.
5. Oluşan **"1. Ana Oyun Ekranı"** linkini kopyalayın ve OBS'te yeni bir **Tarayıcı (Browser)** kaynağı oluşturarak URL kısmına yapıştırın. (Genişlik: 1920, Yükseklik: 1080 olmalıdır).
6. İsteğe bağlı: **"2. Sıralama Ekranı"** linkini de OBS'e ekleyip ekranın köşesine yerleştirin.
7. İsteğe bağlı: **"3. İstatistik ve Geçmiş Merkezi"** (`log.html`) linkini OBS'te ya **Tarayıcı Kaynağı** olarak ya da **Paneller → Özel Tarayıcı Yuvaları** kısmına ekleyin.
8. Chat'inize komutu yazın ve karakterlerin düşüşünü izleyin!

**🇬🇧 English:**
1. Open the `panel.html` file in your browser.
2. Enter your **Kick Channel Name**, trigger command (e.g. `!drop`), and cooldown duration.
3. Select the themes and active parachute colors you want.
4. Click the **"Generate Links"** button.
5. Copy the **"1. Main Overlay"** link and add a new **Browser Source** in **OBS Studio** (Width: 1920, Height: 1080).
6. Optional: Add the **"2. Leaderboard Screen"** link to OBS and position it in a corner.
7. Optional: Add the **"3. Stats & History Center"** (`log.html`) as a **Browser Source** or via **Docks → Custom Browser Docks**.
8. Type your command in the chat and watch the characters fall!

---

## 🎮 Komutlar / Chat Commands

**🇹🇷 İzleyici Komutları:**

| Komut | Açıklama |
|---|---|
| `!atla` | Standart paraşütlü atlayış. |
| `!atla [emote]` | Komutla birlikte bir Kick emote yazılırsa, o emote ekranda düşen karakter olur. |
| `!atla dive` | Helikopterden paraşütsüz, havada fırıl fırıl dönerek çılgın bir dalış yapar. |
| `!atla drunk` | Sarhoş gibi ne yapacağı belli olmayan, rastgele sağa sola savrularak aşağı düşer. |
| `!atla tarzan` | Ekranın dışından uzun bir iple sarkaç hareketi yaparak uçar; ip kopar ve havuza düşer. |
| `!atla fake` | Kusursuz bir iniş yapacakmış gibi süzülürken son anda paraşütünü bırakıp jetpackle havaya uçar ve kaybolur. |
| `!atla random` | Yukarıdaki modlardan birini (dive, drunk, tarzan, fake dahil) tamamen rastgele seçer ve uygular. |

**🇹🇷 Yayıncı Komutları *(Sadece Yayıncı)*:**

| Komut | Açıklama |
|---|---|
| `!droptogether` | **Toplu Atlayış (Kuyruk) Modunu** başlatır. İzleyiciler komut yazınca kuyruğa alınır. Yayıncı tekrar komut girdiğinde kendisi de sıraya eklenir ve devasa bir uçak kalkar, herkesi aynı anda atar. |
| `!resetdrop` | Tüm izleyicilerin bekleme sürelerini (cooldown) sıfırlar; varsa toplu atlayış kuyruğunu iptal eder ve temizler. |

---

**🇬🇧 Viewer Commands:**

| Command | Description |
|---|---|
| `!drop` | Standard parachute drop. |
| `!drop [emote]` | If a Kick emote is added to the command, that emote becomes the falling character on screen. |
| `!drop dive` | Drops from a helicopter without a parachute, spinning wildly in the air. |
| `!drop drunk` | Falls down swaying left and right randomly, moving like a drunk jumper. |
| `!drop tarzan` | Swings in from off-screen on a long rope like a pendulum; the rope snaps and they fall into the pool. |
| `!drop fake` | Glides down as if making a perfect landing, then at the last second ditches the parachute and blasts off with a jetpack. |
| `!drop random` | Randomly selects and applies one of the modes above (including dive, drunk, tarzan, and fake). |

**🇬🇧 Streamer Commands *(Streamer Only)*:**

| Command | Description |
|---|---|
| `!droptogether` | Starts **Queue Mode**. Viewers who type the drop command are queued up. When the streamer types the command again, they join the queue and a massive plane immediately drops everyone at once. |
| `!resetdrop` | Resets all viewer cooldowns and clears the drop queue if active. |

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


