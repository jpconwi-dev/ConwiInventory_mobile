# conwiInventory mobile (Flutter)

Native Android app for conwiInventory. It talks to the same Flask API as the web app:
`https://conwiinventory.onrender.com` (change with `--dart-define=API_URL=...`).

## Get the APK
**GitHub (easiest):** put this `mobile/` folder and `.github/workflows/build-apk.yml` in your repo, push,
open the **Actions** tab > "Build Android APK" > Run workflow. Download `conwiInventory-apk` when it finishes
and install `app-release.apk` on your phone (allow "install unknown apps").

**Your own PC:** install Flutter + Android Studio, then `bash mobile/build_apk.sh`.

## Notes
- No backend changes needed. Native apps are not blocked by CORS.
- Render's free plan sleeps; the first request after a pause can take ~50 s. The app wakes it on launch.
- Screens: Login/first-time setup, Dashboard, Analysis, Sell (POS), Products, Sales, Estores, Storage, public Estores form.
- Not ported: "Save as PDF" on Analysis and "Print receipt".
- The APK is signed with Flutter's debug key, fine for installing on your own phone; use a real keystore before publishing to Play Store.
