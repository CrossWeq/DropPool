# DropPool 🪂

![DropPool](https://img.shields.io/badge/Version-1.0-blue) ![License](https://img.shields.io/badge/License-MIT-green)

🇹🇷 **DropPool**, Kick yayıncıları için geliştirilmiş açık kaynaklı ve interaktif bir OBS aracıdır. İzleyicilerinizin sohbete (chat) belirlediğiniz komutu yazarak ekrandaki havuza kendi isimleriyle paraşütle atlamasını sağlar.

🇬🇧 **DropPool** is an open-source, interactive OBS overlay designed for Kick streamers. It allows your viewers to drop into a pool with their custom parachutes and names by typing a command in the chat.

---

## 🚀 Özellikler / Features

- 🌐 **İki Dil Desteği (Bi-lingual):** Türkçe ve İngilizce kurulum paneli. (TR/EN Setup Panel)
- 🎨 **Özelleştirilebilir Temalar (Custom Themes):** İlkbahar, Sonbahar, Kış ve Cehennem temaları. (Spring, Autumn, Winter, Hell)
- 🪂 **Renk Seçenekleri (Parachute Colors):** İzleyiciler için 8 farklı havalı paraşüt rengi. (8 different parachute colors)
- ⏱️ **Spam Koruması (Cooldown):** Chat spamını önlemek için kullanıcı bazlı bekleme süresi ayarı. (Customizable viewer cooldowns)
- 🏆 **Sıralama (Leaderboard):** En çok atlayanları ve puanları gösteren dinamik liderlik tablosu. (Live drop leaderboard)

---

## 🛠️ Nasıl Kurulur? / How to Setup?

**🇹🇷 Türkçe:**
1. `panel.html` dosyasını tarayıcınızda açın (veya host ettiğiniz siteye girin).
2. **Kick Kanal Adınızı** ve tetikleyici komutu (Örn: `!atla`) belirleyin.
3. Sağ altta oluşan "1. Ana Oyun Ekranı" linkini kopyalayın.
4. **OBS Studio**'da yeni bir **Tarayıcı (Browser)** kaynağı oluşturun.
5. Kopyaladığınız linki URL kısmına yapıştırın. (Genişlik: 1920, Yükseklik: 1080 olmalıdır).
6. Chat'inize komutu yazın ve karakterlerin düşüşünü izleyin!

**🇬🇧 English:**
1. Open the `panel.html` file in your browser (or visit your hosted URL).
2. Enter your **Kick Channel Name** and your trigger command (e.g. `!drop`).
3. Copy the generated "Main Overlay" link.
4. Add a new **Browser Source** in **OBS Studio**.
5. Paste the copied link into the URL field. (Set Width: 1920, Height: 1080).
6. Type your command in the chat and watch the characters fall!

## 🎮 Komutlar / Chat Commands

**🇹🇷 Türkçe:**
- `!atla` (veya panelden belirlediğiniz komut): Standart paraşütlü atlayış.
- `!atla dive`: Helikopterden paraşütsüz ve havada fırıl fırıl dönerek (spin) çılgın bir dalış yapar.
- `!atla drunk`: Sarhoş gibi ne yapacağı belli olmayan rastgele sağa sola savrularak aşağı düşer.
- `!atla tarzan`: Ekranın dışından uzun bir iple sarkaç hareketi (sallanma) yaparak uçar. İp bir süre sonra kopar ve karakter havuza düşer.
- `!droptogether` *(Sadece Yayıncı)*: Toplu atlayış (Queue) modunu başlatır. İzleyiciler komut yazınca beklemeye (sıraya) alınır. Yayıncı atlama komutu girdiğinde hem kendisi de sıraya eklenir hem de devasa bir uçak anında kalkar, herkesi aynı anda uçaktan atar.
- `!resetdrop` *(Sadece Yayıncı)*: Tüm izleyicilerin bekleme süresini (cooldown) sıfırlar ve varsa toplu atlayış sırasını iptal edip temizler.

**🇬🇧 English:**
- `!drop` (or your custom command): Standard parachute drop.
- `!drop dive`: Drops from a helicopter without a parachute, spinning wildly in the air.
- `!drop drunk`: Falls down swaying left and right randomly, moving like a drunk jumper.
- `!drop tarzan`: Swings into the screen on a long rope like a pendulum. The rope snaps after a while, dropping the character into the pool.
- `!droptogether` *(Streamer Only)*: Starts "Queue Mode". Viewers who type the drop command are queued up. When the streamer types the drop command, they are added to the queue as well and a massive plane immediately flies by, dropping everyone at once.
- `!resetdrop` *(Streamer Only)*: Resets all viewer cooldowns and clears the drop queue if active.

---

## 💻 Geliştirici / Developer
Developed with ❤️ by **CrossWeq**

İletişim / Contact: [crosweq204@gmail.com](mailto:crosweq204@gmail.com)
