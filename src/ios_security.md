# iOS 26.3 Security and Privacy Settings Guide

A comprehensive guide to configuring security and privacy settings on iOS 26.3 (the latest version as of February 11, 2026) to protect your personal data and secure your iPhone.

---

## What's New in iOS 26

iOS 26 (released September 15, 2025) represents Apple's biggest security and privacy update in years. Apple jumped from iOS 18 to iOS 26 to align version numbers with the year across all operating systems.

### Major Security & Privacy Additions in iOS 26

- **Wi-Fi Aware** – Secure peer-to-peer connections without internet access points
- **Post-Quantum Cryptography** – Hybrid key exchange protecting against future quantum computing threats
- **Expanded Passkey Support** – Automatic passkey creation and migration from passwords
- **Advanced Tracking Protection for All Browsing** – Anti-fingerprinting expanded beyond Private Browsing
- **Wired Accessories Security** – Explicit permission controls for USB-C/Lightning accessories
- **Enhanced Parental Controls** – Stronger child account management and content filtering
- **Password Version History** – Track changes to saved passwords over time
- **Secure Password Export** – FIDO Alliance standard for moving credentials between managers
- **Liquid Glass Design** – New translucent interface (including privacy-focused opacity controls)

### iOS 26.2 Security Updates (December 2025)

- **26+ security vulnerabilities patched**, including two actively exploited WebKit zero-days
- **AirDrop security codes** – One-time codes for sharing with unknown contacts
- **Hidden Photos fix** – Addressed vulnerability allowing unauthorized access
- **FaceTime caller ID spoofing** – Patched to prevent impersonation attacks
- **iMessage privacy controls** – Improved data handling

### iOS 26.2.1 (January 26, 2026)

iOS 26.2.1 is a minor update focused on new hardware support and bug fixes.

**New Features:**
- **AirTag (2nd Generation) support** – Required for the new AirTag with:
  - Second-generation Ultra Wideband (UWB) chip for 50% longer Precision Finding range
  - Precision Finding on Apple Watch (Series 9+, Ultra 2+) for the first time
  - 50% louder speaker for easier locating and enhanced anti-stalking measures
  - Expanded Bluetooth range for better Find My network detection
  - Share Item Location with 36+ airlines for lost luggage recovery

**Bug Fixes:**
- Emergency calling fix for older mobile phones
- Unspecified stability improvements

**Security Notes:**
- No published CVE entries for iOS 26.2.1 itself
- Users on iOS 26-compatible devices should update to maintain security (older iOS versions only receive certificate updates)

**Also Released:**
- iOS 18.7.4, iOS 16.7.13, iOS 15.8.6, iOS 12.5.8 – Certificate updates for iMessage, FaceTime, and Apple account sign-in (valid until January 2027)

<div class="danger-block">
<svg class="admon-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#c62828" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
<div class="admon-body">
<div class="admon-title">Critical</div>

iOS 26.2.1 is required for AirTag (2nd Generation). Update via **Settings > General > Software Update**.

</div></div>

### iOS 26.3 (February 11, 2026)

iOS 26.3 addresses **37 security vulnerabilities** including one actively exploited zero-day, adds new privacy controls, and introduces a data transfer tool for users switching to Android.

**Security Fixes:**

- **Actively exploited zero-day (CVE-2026-20700)** – A memory corruption flaw in the `dyld` dynamic link editor that allowed arbitrary code execution. Apple says it "may have been exploited in an extremely sophisticated attack against specific targeted individuals" on versions before iOS 26.
- **3 kernel/privilege escalation flaws** – Including CVE-2026-20617 and CVE-2026-20615 (CoreServices race condition and path handling bugs allowing root privileges) and CVE-2026-20626 (kernel root privilege escalation)
- **Sandbox escape (CVE-2026-20667)** – A logic flaw in `libxpc` allowing apps to break out of the sandbox
- **Remote file write (CVE-2026-20660)** – A CFNetwork path handling vulnerability allowing remote attackers to write arbitrary files
- **Lock screen photo access (CVE-2026-20642)** – A bug in Photos allowing someone with physical access to view photos from the lock screen
- **Accessibility data leaks (CVE-2026-20674)** – Sensitive user information viewable on a locked device
- Additional fixes in WebKit, ImageIO, CoreAudio, Game Center, Messages, Shortcuts, and StoreKit

<div class="danger-block">
<svg class="admon-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#c62828" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
<div class="admon-body">
<div class="admon-title">Critical</div>

The dyld zero-day (CVE-2026-20700) was actively exploited in targeted attacks. Update to iOS 26.3 immediately via **Settings > General > Software Update**.

</div></div>

**New Features:**

- **Limit Precise Location** – Reduces what cellular carriers can infer about your location to neighborhood-level instead of street-level precision. Requires iPhone 16e or iPhone Air (C1/C1X modem). Currently supported by Boost Mobile (US), EE/BT (UK), Telekom (Germany), and AIS/True (Thailand).
- **Transfer to Android** – A new proximity-based tool for migrating photos, messages, notes, apps, passwords, and phone number to an Android device. Health data and locked notes remain on iPhone.
- **Encrypted RCS messaging support** – System-level support for encrypted Rich Communication Services messaging is now present in the OS code, pending carrier activation.

**EU-Only Features (Digital Markets Act compliance):**

- **Notification forwarding** – Forward iPhone notifications to third-party wearables (not just Apple Watch)
- **Proximity pairing** – One-tap pairing for third-party headphones and smartwatches, similar to AirPods

---

## 1. Device Authentication

### Face ID / Touch ID Setup

Biometric authentication provides secure and convenient device access.

**How to set up Face ID:**
1. Open **Settings**
2. Tap **Face ID & Passcode**
3. Enter your passcode
4. Tap **Set Up Face ID**
5. Follow on-screen instructions to position your face
6. Move your head in a circle to complete the scan

**Configure Face ID uses:**
- iPhone Unlock
- iTunes & App Store purchases
- Apple Pay
- Password AutoFill
- Other Apps (toggle individually)

### Strong Passcode Configuration

**How to set a strong passcode:**
1. Go to **Settings > Face ID & Passcode**
2. Tap **Change Passcode**
3. Tap **Passcode Options**
4. Select **Custom Alphanumeric Code** (8-12 random characters recommended)

### Two-Factor Authentication (2FA)

**How to enable 2FA:**
1. Go to **Settings > [Your Name] > Sign-In & Security**
2. Tap **Turn On Two-Factor Authentication**
3. Tap **Continue**
4. Enter a trusted phone number
5. Verify with the code sent to your phone

### Auto-Lock Settings

1. Go to **Settings > Display & Brightness > Auto-Lock**
2. Select a time interval (30 seconds to 5 minutes recommended)

### Security Keys for Apple Account

Security keys are small external devices that look like a thumb drive or tag. They provide extra protection for your Apple Account by replacing the standard six-digit verification code with a physical device as the second factor in two-factor authentication. Because they are physical, they help prevent attackers from intercepting or requesting your second factor through phishing.

**Requirements:**
- At least two FIDO® Certified security keys (e.g., YubiKey 5C NFC, YubiKey 5Ci, or FEITIAN ePass K9 NFC)
- iOS 16.3 or later
- Two-factor authentication already enabled on your Apple Account
- A modern web browser

**Compatible connector types:**
- **NFC** — Works with iPhone via tap (contactless)
- **USB-C** — Works with iPhone 15 or later and most Mac models
- **Lightning** — Works with iPhone 14 and earlier
- **USB-A** — Works with older Mac models

**How to add security keys:**
1. Go to **Settings > [Your Name] > Sign-In & Security**
2. Tap **Two-Factor Authentication**
3. Tap **Security Keys**
4. Tap **Add Security Keys**
5. Follow the on-screen instructions
6. You can add up to six keys total

**What security keys protect:**
- Signing in to your Apple Account on a new device or on the web
- Resetting your Apple Account password or unlocking your account
- Adding or removing security keys

<div class="warning-block">
<svg class="admon-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#d4760a" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
<div class="admon-body">
<div class="admon-title">Important</div>

- You must keep at least two security keys in safe places. If you lose all your trusted devices and security keys, you could be locked out of your account permanently.
- Security keys are not compatible with child accounts or Managed Apple Accounts.
- Apple Watch paired using a family member's iPhone is not supported.
- Devices signed in with your account that have not been used for more than 90 days will be signed out when you add security keys. You can sign back in to those devices using a security key.

</div></div>

---

## 2. Stolen Device Protection

Stolen Device Protection adds security when your iPhone is away from familiar locations.

### Key Features

**Biometric Authentication Required** (no passcode fallback):
- Accessing passwords stored in iCloud Keychain
- Using saved payment methods in Safari
- Turning off Lost Mode
- Erasing all content and settings
- Viewing Apple Card virtual card number
- Opening locked and hidden apps

**Security Delay** (1-hour wait + second biometric scan):
- Changing Apple Account password
- Signing out of Apple Account
- Turning off Stolen Device Protection
- Changing Face ID or Touch ID settings
- Changing device passcode
- Resetting all settings
- Turning off Find My

### How to Enable

1. Go to **Settings > Face ID & Passcode**
2. Enter your passcode
3. Scroll down and tap **Stolen Device Protection**
4. Toggle on

### Configuration Options

- **Away from Familiar Locations** – Security features activate only when away from home/work
- **Always** – Security features are always active

### Requirements

- iOS 17.3 or later (enhanced in iOS 26)
- Two-factor authentication enabled
- Face ID or Touch ID configured
- Device passcode set
- Find My enabled
- Significant Locations enabled

---

## 3. App Privacy Controls

### App Tracking Transparency

**How to configure:**
1. Go to **Settings > Privacy & Security > Tracking**
2. Toggle **Allow Apps to Request to Track** off to block all tracking
3. Or manage individual app permissions below

### App Privacy Report

View detailed app data access:

1. Go to **Settings > Privacy & Security > App Privacy Report**
2. Toggle on **App Privacy Report**
3. Review 7-day history of sensor, camera, microphone, and network access

### Clipboard Access Alerts

iOS 26 continues to notify you whenever apps access your clipboard, preventing silent data harvesting.

### Review All Permissions

1. Go to **Settings > Privacy & Security**
2. Review each category: Location, Contacts, Photos, Microphone, Camera, etc.
3. Revoke unnecessary permissions

---

## 4. Location Services

### Per-App Location Settings

For each app, choose:
- **Never** – No location access
- **Ask Next Time Or When I Share** – Prompts each time
- **While Using the App** – Access only when app is open
- **Always** – Background access (use sparingly)

### Precise vs. Approximate Location

1. Go to **Settings > Privacy & Security > Location Services**
2. Select an app
3. Toggle **Precise Location** off for approximate area sharing

### Significant Locations

1. Go to **Settings > Privacy & Security > Location Services > System Services**
2. Tap **Significant Locations**
3. View, toggle off, or clear history

---

## 5. Lock and Hide Apps

### How to Lock an App

1. Touch and hold the app icon on Home Screen
2. Tap **Require Face ID** (or Touch ID/Passcode)
3. Confirm your choice

### How to Lock and Hide an App

1. Touch and hold the app icon
2. Select **Hide and Require Face ID**
3. App moves to Hidden folder in App Library

**To access hidden apps:**
1. Swipe left to App Library
2. Scroll to bottom, tap **Hidden** folder
3. Authenticate with Face ID/Touch ID

### What Happens When Apps Are Locked

- No notification previews
- Hidden from Spotlight search
- Hidden from Siri suggestions
- Call history from locked apps is hidden

### Integration with Stolen Device Protection

When Stolen Device Protection is enabled, locked apps can **only** be opened with Face ID/Touch ID—passcode fallback is disabled.

---

## 6. Safari Privacy Settings

### Advanced Tracking and Fingerprinting Protection (NEW in iOS 26)

iOS 26 expands anti-fingerprinting protection to **all browsing**, not just Private Browsing:

1. Go to **Settings > Apps > Safari > Advanced**
2. Set **Advanced Tracking and Fingerprinting Protection** to **All Browsing**

This normalizes browser data to make your device look generic to tracking scripts, significantly reducing fingerprinting effectiveness.

### Private Browsing with Face ID Lock

1. Go to **Settings > Apps > Safari**
2. Enable **Require Face ID to Unlock Private Browsing**

### Hide IP Address

1. Go to **Settings > Apps > Safari > Hide IP Address**
2. Choose:
   - **Trackers Only** – Hides IP from known trackers
   - **Trackers and Websites** – Hides IP from all sites (requires iCloud+ Private Relay)

### Intelligent Tracking Prevention

1. Go to **Settings > Apps > Safari**
2. Enable **Prevent Cross-Site Tracking**

### Fraudulent Website Warning

1. Go to **Settings > Apps > Safari**
2. Enable **Fraudulent Website Warning**

### Link Tracking Protection

iOS 26 automatically strips tracking parameters (UTMs) from URLs in Safari Private Browsing, Messages, and Mail.

---

## 7. Mail Privacy Protection

### Features

- Hides your IP address from senders
- Prevents open tracking
- Blocks invisible tracking pixels

### How to Enable

1. Go to **Settings > Apps > Mail > Privacy Protection**
2. Enable **Protect Mail Activity**

Or configure separately:
- **Hide IP Address**
- **Block All Remote Content**

---

## 8. Passwords App

iOS 26 significantly enhances the standalone Passwords app.

### New Features in iOS 26

- **Password Version History** – View previous passwords for any account with timestamps
- **Secure Export** – FIDO Alliance standard for moving passwords, passkeys, and verification codes to other managers
- **Automatic Passkey Upgrades** – When you sign in with a password, system can create a passkey for next time
- **Credential Management Endpoints** – Prompts to upgrade passwords to passkeys
- **Websites to Exclude** – Manage sites where passwords shouldn't be saved

### How to Access

1. Open the **Passwords** app
2. Authenticate with Face ID/Touch ID

### View Password History

1. Open **Passwords**
2. Select a saved login
3. Tap **View History** (appears when multiple versions exist)

### Export Passwords Securely

1. Open **Passwords**
2. Tap **Settings** (gear icon)
3. Select **Export Passwords**
4. Choose destination app (uses encrypted FIDO Alliance format)

### Security Alerts

The app warns about:
- Credentials in known data breaches
- Weak passwords
- Reused passwords

---

## 9. Advanced Data Protection for iCloud

End-to-end encryption for the majority of your iCloud data.

### What It Protects (25 categories total)

- iCloud Backup (including Messages)
- iCloud Drive
- Photos
- Notes
- Reminders
- Safari Bookmarks
- Voice Memos
- Freeform boards
- And more...

**Cannot be encrypted:**
- iCloud Mail, Contacts, Calendars (due to interoperability requirements)

### How to Enable

1. Go to **Settings > [Your Name] > iCloud**
2. Tap **Advanced Data Protection**
3. Tap **Turn On Advanced Data Protection**
4. Set up recovery method first:
   - **Recovery Contact** – Trusted person to help regain access
   - **Recovery Key** – 28-character code to store securely

<div class="warning-block">
<svg class="admon-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#d4760a" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
<div class="admon-body">
<div class="admon-title">Important</div>

- **Apple cannot recover your data** if you lose access
- All devices must run supported OS versions
- iCloud.com access is disabled by default

</div></div>

---

## 10. Lockdown Mode

<div class="warning-block">
<svg class="admon-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#d4760a" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
<div class="admon-body">
<div class="admon-title">Important</div>

Extreme protection for users who may be targeted by sophisticated attacks. This mode significantly restricts device functionality to reduce attack surfaces, but also provides robust defense against mercenary spyware.

</div></div>

### Who Should Use It

- Journalists, activists, diplomats
- High-profile individuals
- Anyone targeted by mercenary spyware

### What Lockdown Mode Does

- **Messages:** Most attachments blocked
- **Web:** Complex technologies disabled (JIT JavaScript)
- **FaceTime:** Incoming calls blocked from unknown contacts
- **Photos:** Location excluded from shared photos
- **Device:** Wired connections blocked when locked
- **Wireless:** 2G cellular disabled, won't auto-join insecure Wi-Fi

### How to Enable

1. Go to **Settings > Privacy & Security**
2. Scroll down and tap **Lockdown Mode**
3. Tap **Turn On Lockdown Mode**
4. Tap **Turn On & Restart**
5. Enter your passcode

---

## 11. Communication Safety & Parental Controls

### Enhanced Parental Controls (iOS 26)

iOS 26 significantly strengthens parental controls:

- **Child Accounts** – Create or move kids into managed accounts easily
- **Communication Controls** – Decide who children can text/call
- **Third-Party App Management** – Control messaging in gaming and social apps
- **Unknown Number Blocking** – Block calls/messages from unknown numbers
- **Age Limits** – Set strict age limits for app downloads
- **Explicit Content Detection** – Blurs inappropriate content in shared albums and FaceTime

### Communication Safety

Protects children from sensitive content in Messages:

1. Go to **Settings > Screen Time**
2. Tap **Communication Safety**
3. Toggle on **Communication Safety**

### Sensitive Content Warning (Adults)

1. Go to **Settings > Privacy & Security > Sensitive Content Warning**
2. Toggle on to blur sensitive images

---

## 12. Safety Check

Quickly review and reset access you've granted to others.

### How to Access

1. Go to **Settings > Privacy & Security**
2. Tap **Safety Check**

### Options

**Manage Sharing & Access:** Granular control over individual permissions

**Emergency Reset:** Immediately stops all sharing, resets permissions, signs out of iCloud on other devices

**Quick Exit:** Instantly returns to Home Screen (progress saved)

---

## 13. Find My iPhone

### How to Enable

1. Go to **Settings > [Your Name] > Find My**
2. Tap **Find My iPhone**
3. Enable:
   - **Find My iPhone**
   - **Find My Network** (locate even when offline)
   - **Send Last Location**

### Activation Lock for Parts (iOS 26)

iOS 26 extends Activation Lock to individual components (batteries, cameras, displays), making stolen parts unusable.

### AirTag (2nd Generation) - iOS 26.2.1 Required

The new AirTag (released January 26, 2026) requires iOS 26.2.1 or later and includes significant security and tracking improvements:

**Enhanced Finding Capabilities:**
- **50% longer Precision Finding range** via second-generation Ultra Wideband chip
- **Precision Finding on Apple Watch** – Works on Apple Watch Series 9+, Ultra 2+ (first time on wrist)
- **Expanded Bluetooth range** – Better detection by Find My network devices
- **50% louder speaker** – Easier to locate and harder for stalkers to mask

**Anti-Stalking Improvements:**
- Louder alert sounds when separated from owner's device
- Improved detection notifications on iPhones
- Same separation alert timing (approximately 8 hours)

**Share Item Location:**
- Securely share AirTag location with airlines for lost luggage
- 36 airlines supported at launch, 15+ more coming
- End-to-end encrypted sharing

**How to Set Up AirTag (2nd Gen):**
1. Ensure iOS 26.2.1 is installed
2. Bring AirTag near your iPhone
3. Tap **Connect** when prompted
4. Name your AirTag and assign an emoji
5. Register to your Apple ID

---

## 14. Advertising and Tracking Controls

### Disable Advertising Identifier

1. Go to **Settings > Privacy & Security > Tracking**
2. Toggle off **Allow Apps to Request to Track**

### Disable Apple Personalized Ads

1. Go to **Settings > Privacy & Security > Apple Advertising**
2. Toggle off **Personalized Ads**

### Analytics & Improvements

1. Go to **Settings > Privacy & Security > Analytics & Improvements**
2. Toggle off data sharing options

---

## 15. Apple Intelligence Privacy

### On-Device Processing

Most Apple Intelligence features process data locally on your device.

### Private Cloud Compute

For complex requests:
- Uses Apple's Private Cloud Compute
- Data never stored on servers
- Cryptographically verified privacy

### Control AI Learning

1. Go to **Settings > Apple Intelligence & Siri**
2. Scroll to **Apps**
3. Toggle off **Learn from this App** for sensitive apps

---

## 16. Wi-Fi Aware & Network Security (NEW in iOS 26)

### Wi-Fi Aware

A new peer-to-peer networking framework allowing secure connections without access points:

- Direct encrypted links between devices
- Ideal for file transfers, gaming, media streaming
- No internet connection required
- Third-party apps can use this for secure local sharing

### Post-Quantum Cryptography (iOS 26)

iOS 26 adds hybrid post-quantum key exchange to TLS connections:

- Pairs classic elliptic curve math with lattice-based schemes
- Protects current data against future quantum computing threats
- Works automatically with Apple's networking frameworks

### Limit Precise Location (NEW in iOS 26.3)

Reduces the location precision available to your cellular carrier from street-level to neighborhood-level.

**How to enable:**
1. Go to **Settings > Privacy & Security > Location Services > System Services**
2. Tap **Limit Precise Location**
3. Toggle on

**Requirements:**
- iPhone 16e or iPhone Air (devices with Apple C1/C1X modem)
- Carrier support: Boost Mobile (US), EE/BT (UK), Telekom (Germany), AIS/True (Thailand) at launch

### Captive Assist

When you connect to public Wi-Fi by filling out a form, iOS 26 can automatically share that form information with your other Apple devices, making it easier to connect securely.

---

## 17. Wired Accessories Security (NEW in iOS 26)

### Enhanced USB-C/Lightning Port Security

iOS 26 gives you explicit control over what happens when accessories connect:

**How to configure:**
1. Go to **Settings > Face ID & Passcode**
2. Scroll to **Accessories**
3. Choose behavior:
   - **Allow when unlocked** (default)
   - **Always ask**
   - **Never allow**

### Why This Matters

- Malicious cables can extract data while appearing to charge
- Compromised chargers in public places pose real risks
- You now get immediate notification when a cable tries to do more than charge
- Stops "juice jacking" attacks at airports, hotels, and other public charging stations

---

## 18. AirDrop Security (NEW in iOS 26.2)

### One-Time AirDrop Codes

iOS 26.2 introduces secure codes for sharing with unknown contacts:

**How it works:**
1. When sharing with someone not in your contacts, generate a temporary code
2. The receiver displays the code on their device
3. Sender enters the code to complete transfer
4. Code is valid for 30 days for that contact

### Tighter Proximity Detection

AirDrop now shows only devices within close physical proximity, reducing:
- Accidental transfers
- Unsolicited content ("AirDrop spam")
- Faster peer-to-peer connections in crowded areas

---

## 19. Additional Security Recommendations

### Lock Screen Security

**Disable Control Center from lock screen:**
1. Go to **Settings > Face ID & Passcode**
2. Under **Allow Access When Locked**, toggle off:
   - Control Center
   - Notification Center
   - USB Accessories

### Automatic Software Updates

1. Go to **Settings > General > Software Update**
2. Tap **Automatic Updates**
3. Enable all options including **Security Responses & System Files**

### Lock Screen Notifications

1. Go to **Settings > Notifications > Show Previews**
2. Select **When Unlocked** or **Never**

### Liquid Glass Opacity (iOS 26)

For better readability and reduced glare:
1. Go to **Settings > Display & Brightness > Liquid Glass**
2. Choose **Clear** (sharper) or **Tinted** (softer, less glare)

### Restart After Security Updates

After installing iOS 26.2 or any security update, **restart your device**. Some spyware lives only in volatile memory and is cleared by a reboot.

### Erase Data After Failed Attempts

1. Go to **Settings > Face ID & Passcode**
2. Enable **Erase Data** (erases after 10 failed passcode attempts)

---

## Quick Reference: Essential Settings Checklist

| Setting | Location | Recommended |
|---------|----------|-------------|
| Face ID/Touch ID | Settings > Face ID & Passcode | ✅ Enable |
| Strong Passcode | Settings > Face ID & Passcode | ✅ Alphanumeric |
| Two-Factor Authentication | Settings > [Name] > Sign-In & Security | ✅ Enable |
| Stolen Device Protection | Settings > Face ID & Passcode | ✅ Enable |
| App Tracking | Settings > Privacy & Security > Tracking | ❌ Disable |
| Advanced Tracking Protection | Settings > Apps > Safari > Advanced | ✅ All Browsing |
| Mail Privacy | Settings > Apps > Mail > Privacy Protection | ✅ Enable |
| Advanced Data Protection | Settings > [Name] > iCloud > Advanced Data Protection | ✅ Enable |
| Find My | Settings > [Name] > Find My | ✅ Enable |
| Automatic Updates | Settings > General > Software Update | ✅ Enable |
| Wired Accessories | Settings > Face ID & Passcode > Accessories | ⚙️ Always Ask |
| Lock Screen Previews | Settings > Notifications > Show Previews | ⚙️ When Unlocked |

---

## Conclusion

iOS 26.3 represents Apple's most comprehensive security and privacy update to date. Key priorities:

1. **Update to iOS 26.3 immediately** – Patches an actively exploited dyld zero-day (CVE-2026-20700) and 36 other vulnerabilities
2. **Enable lockdown mode** – Prevents sophisticated spyware attacks
3. **Enable Stolen Device Protection** – Prevents thieves from accessing data even with your passcode
4. **Turn on Advanced Data Protection** – End-to-end encrypts your iCloud data
5. **Enable Advanced Tracking Protection for All Browsing** – Major anti-fingerprinting improvement
6. **Configure Wired Accessories security** – Protects against malicious charging cables
7. **Use Passkeys** – Let iOS 26 automatically upgrade your passwords to phishing-resistant passkeys
8. **Restart after updates** – Clears memory-resident threats

By configuring these settings, you significantly strengthen your privacy and security against both common and sophisticated threats.

---

*Last updated: February 14, 2026 | Applies to iOS 26.3*
*Device requirements: iPhone 11 or later (A13 Bionic chip minimum)*
*AirTag (2nd Generation) requires iOS 26.2.1 or later*
*Limit Precise Location requires iPhone 16e or iPhone Air*
