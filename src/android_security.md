# Android 16 Security and Privacy Settings Guide

A comprehensive guide to configuring security and privacy settings on Android 16 to protect your personal data and secure your device.

---

## Table of Contents

1. [What's New in Android 16](#whats-new-in-android-16)
2. [Advanced Protection Mode](#1-advanced-protection-mode)
3. [Device Authentication](#2-device-authentication)
4. [Identity Check](#3-identity-check)
5. [Theft Protection](#4-theft-protection)
6. [App Permissions](#5-app-permissions)
7. [Location Services](#6-location-services)
8. [Private Space](#7-private-space)
9. [Google Play Protect](#8-google-play-protect)
10. [Google Password Manager & Passkeys](#9-google-password-manager--passkeys)
11. [Scam & Spam Protection](#10-scam--spam-protection)
12. [Network Security](#11-network-security)
13. [USB Protection](#12-usb-protection)
14. [Find My Device](#13-find-my-device)
15. [Advertising & Tracking Controls](#14-advertising--tracking-controls)
16. [Google Account Privacy](#15-google-account-privacy)
17. [Chrome & Browser Privacy](#16-chrome--browser-privacy)
18. [Additional Security Recommendations](#17-additional-security-recommendations)

---

## What's New in Android 16

Android 16, released in June 2025, represents Google's most significant security update, featuring a comprehensive "Advanced Protection Mode" that consolidates multiple security features into one easy toggle.

### Major Security & Privacy Additions

- **Advanced Protection Mode** – One-tap activation of all major security features
- **Identity Check** – Biometric authentication required for sensitive settings when away from trusted locations
- **AI-Powered Privacy Controls** – Contextual permission management based on usage patterns
- **Enhanced Theft Protection** – Theft Detection Lock, Offline Device Lock, Inactivity Reboot
- **Intrusion Logging** – Encrypted activity logs for post-breach analysis (coming in QPR3, March 2026)
- **USB Protection** – Default charging-only mode when locked
- **Improved Scam Detection** – Real-time AI-powered scam call and message protection
- **Enhanced Factory Reset Protection** – Stolen devices become harder to use
- **Trade-in Mode** – Secure device preparation for resale
- **Fixed Approximate Location** – Prevents apps from inferring precise location through workarounds
- **Local Network Protection** – New runtime permission for local network access
- **Restore Credentials** – Seamless passkey migration to new devices

### Device Requirements

- Android 16 stable released June 2025
- Available on Google Pixel and expanding to other manufacturers
- Some features require specific hardware (e.g., motion sensors for Theft Detection Lock)

---

## 1. Advanced Protection Mode

Advanced Protection Mode is Android 16's flagship security feature—a single toggle that activates Google's strongest device protections.

### What It Enables

**Device Security:**
- Theft Detection Lock (AI-powered theft detection)
- Offline Device Lock (locks when disconnected)
- Inactivity Reboot (restarts after 72 hours locked)
- USB Protection (charging-only when locked)

**App Security:**
- Google Play Protect (cannot be disabled)
- Blocks installation from unknown sources
- Android Safe Browsing

**Network Security:**
- Disables 2G connections
- Blocks auto-reconnect to insecure networks
- Forces HTTPS in Chrome

**Communication Protection:**
- Scam Detection in Phone app
- Spam filtering in Google Messages
- Unsafe link warnings

**Coming Soon:**
- Intrusion Logging (encrypted activity logs)
- Enhanced app permission controls

### How to Enable

1. Open **Settings**
2. Tap **Security & Privacy**
3. Tap **Advanced Protection**
4. Toggle on **Device Protection**
5. Tap **Turn on** and then **Restart**

### Who Should Use It

- Journalists, activists, public figures
- Anyone wanting maximum protection
- Users who don't need to sideload apps

### Considerations

- Cannot sideload apps from unknown sources
- JavaScript optimizer disabled in Chrome (may break some websites)
- Some call screening may flag legitimate calls
- Easy to turn on/off, so no harm in trying

---

## 2. Device Authentication

### Screen Lock Options

Android 16 supports multiple screen lock methods:

**How to configure:**
1. Go to **Settings > Security & Privacy > Device Unlock > Screen Lock**
2. Choose your lock type:
   - **PIN** – 6+ digits recommended
   - **Password** – Most secure (alphanumeric)
   - **Pattern** – Less secure, avoid simple patterns
   - **Fingerprint** – Convenient biometric
   - **Face Unlock** – Available on supported devices

**Best Practice:** Use a PIN with 6+ digits or an alphanumeric password. Add fingerprint for convenience.

### Two-Factor Authentication (2FA) for Google Account

**How to enable:**
1. Go to **Settings > Google > Manage your Google Account**
2. Tap **Security**
3. Under "How you sign in to Google," tap **2-Step Verification**
4. Follow setup instructions
5. Add multiple verification methods (authenticator app, backup codes, security key)

### Biometric Settings

1. Go to **Settings > Security & Privacy > Device Unlock > Fingerprint** (or Face Unlock)
2. Add your biometrics
3. Configure what biometrics can unlock (device, apps, payments)

---

## 3. Identity Check

Identity Check requires biometric authentication for sensitive actions when you're away from trusted locations—similar to iOS's Stolen Device Protection.

### What It Protects

When outside trusted locations, biometric authentication is required for:
- Changing device PIN or password
- Changing biometric settings
- Disabling theft protection
- Accessing passkeys
- Factory resetting the device
- Changing Google Account settings

### How to Enable

1. Go to **Settings > Security & Privacy > Device Unlock > Theft Protection**
2. Tap **Identity Check**
3. Follow setup instructions
4. Add trusted locations (home, work)

### Requirements

- Android 16 on supported devices (Pixel, Samsung One UI 7, others)
- Screen lock and biometrics enabled
- Location services enabled

### Best Practice

- Only add truly trusted private locations
- Never add public places as trusted locations

---

## 4. Theft Protection

Android 16 consolidates multiple theft protection features.

### Theft Detection Lock

Uses AI and device sensors to detect if someone snatches your phone and runs.

**How to enable:**
1. Go to **Settings > Google > All services > Theft Protection**
2. Toggle on **Theft Detection Lock**

**How it works:**
- Monitors motion sensors, Wi-Fi, and Bluetooth
- Automatically locks screen if theft is detected
- Won't trigger during stable connections

### Offline Device Lock

Automatically locks your device if it goes offline (thief turns off internet).

**How to enable:**
1. Go to **Settings > Google > All services > Theft Protection**
2. Toggle on **Offline Device Lock**

### Failed Authentication Lock

Locks device after repeated failed unlock attempts.

**How to enable:**
1. Go to **Settings > Google > All services > Theft Protection**
2. Toggle on **Failed Authentication Lock** (may be on by default)

### Inactivity Reboot

Automatically restarts device after 72 hours of being locked, making data unreadable until fresh unlock.

**Enabled automatically with Advanced Protection**

### Remote Lock

Lock your device remotely via Find My Device with security challenge question.

### Factory Reset Protection

Enhanced in Android 16 to restrict all functions on devices reset without authorization.

---

## 5. App Permissions

### Permission Manager

Review and control what data apps can access:

1. Go to **Settings > Security & Privacy > Privacy Controls > Permission Manager**
2. Review each category:
   - Location
   - Camera
   - Microphone
   - Contacts
   - Files and media
   - Calendar
   - Phone
   - SMS
   - Body sensors / Health
   - Nearby devices

### Permission Options

For each app, you can choose:
- **Allow all the time** – Background access (use sparingly)
- **Allow only while using the app** – Access only when app is open
- **Ask every time** – Prompts each use
- **Don't allow** – No access

### One-Time Permissions

For camera, microphone, and location, you can grant one-time access that revokes when you close the app.

### Auto-Reset Unused App Permissions

Android automatically resets permissions for apps you haven't used in a while.

1. Go to **Settings > Apps > [App name] > Permissions**
2. Ensure **Pause app activity if unused** is enabled

### AI-Powered Permission Controls (Android 16)

Android 16 introduces contextual permission management:
- System evaluates if permission requests match your usage patterns
- Unusual requests (e.g., location at midnight) may trigger additional confirmation
- Detailed permission logs explain automated decisions

### Local Network Protection (New in Android 16)

Apps now need explicit permission to access your local network (smart home devices, etc.):

1. Go to **Settings > Security & Privacy > Privacy Controls > Permission Manager**
2. Review **Nearby devices** and **Local network** permissions

---

## 6. Location Services

### Global Location Settings

1. Go to **Settings > Location**
2. Toggle **Use location** on or off

### Per-App Location Permissions

1. Go to **Settings > Location > App location permissions**
2. For each app, choose:
   - **Allowed all the time**
   - **Allowed only while using**
   - **Ask every time**
   - **Not allowed**

### Precise vs. Approximate Location

Android 16 fixes a flaw that allowed apps to infer precise location even with approximate permission.

**How to configure:**
1. Go to **Settings > Location > App location permissions > [App]**
2. Toggle **Use precise location** off for apps that don't need exact coordinates

### Location History

1. Go to **Settings > Google > Manage your Google Account > Data & privacy**
2. Under "History settings," review **Location History**
3. Turn off or set auto-delete (3 months, 18 months, 36 months)

---

## 7. Private Space

Private Space lets you hide and secure sensitive apps behind a separate authentication.

### Features

- Hidden apps in a separate space
- Separate Google account for private apps
- Requires PIN/biometric to access
- Apps don't appear in app drawer, search, or notifications

### How to Set Up

1. Go to **Settings > Security & Privacy > Private Space**
2. Follow setup instructions
3. Create or sign into a Google account for Private Space
4. Set up lock (PIN, pattern, or password)

### Adding Apps to Private Space

1. Open Private Space (swipe up and scroll to bottom of app list)
2. Tap **Install apps**
3. Install or move apps to Private Space

### Best Practice

Use Private Space for:
- Banking and financial apps
- Personal health apps
- Sensitive documents
- Apps you want to keep private

---

## 8. Google Play Protect

Play Protect scans your device for harmful apps.

### Features

- Automatic app scanning
- Real-time threat protection
- Identifies harmful apps and malware
- Cannot be disabled when Advanced Protection is on

### How to Check Status

1. Open **Google Play Store**
2. Tap your profile icon
3. Tap **Play Protect**
4. Tap **Scan** to run manual scan

### Settings

1. In Play Protect, tap **Settings** (gear icon)
2. Ensure **Scan apps with Play Protect** is on
3. Enable **Improve harmful app detection** to send unknown apps to Google

### Live Threat Protection (Android 16)

Enhanced scanning detects apps that:
- Change their icon to hide
- Attempt to evade detection
- Show malicious behavior

Available on Pixel 6+ and newer devices from other manufacturers.

---

## 9. Google Password Manager & Passkeys

### Google Password Manager

Built-in password manager that syncs across devices.

**How to access:**
1. Go to **Settings**
2. Search for **Password Manager**
3. Or open the **Passwords** app

**Features:**
- Save and autofill passwords
- Generate strong passwords
- Password checkup (finds weak, reused, compromised passwords)
- Syncs to Google Account

### Passkeys

Passkeys are phishing-resistant replacements for passwords.

**Benefits:**
- More secure than passwords
- Cannot be phished
- Synced across devices via Google Password Manager
- Authenticate with fingerprint, face, or PIN

**How to use passkeys:**
1. When a site/app supports passkeys, you'll be prompted to create one
2. Confirm with your screen lock (fingerprint, face, PIN)
3. Passkey is saved to Google Password Manager
4. Sign in using your device's biometric/PIN

**Automatic Passkey Creation (Android 16):**
- When you sign in with a password, Android can automatically create a passkey for future use

**Restore Credentials (Android 16):**
- When setting up a new device, passkeys and app credentials transfer automatically

### Settings

1. Go to **Settings > Passwords, passkeys & accounts**
2. Configure your password manager
3. Enable **Offer to save passwords**
4. Enable **Automatically create a passkey to sign in faster**

---

## 10. Scam & Spam Protection

### In-Call Protection (Android 16)

Blocks dangerous actions during calls with non-contacts:
- Cannot sideload apps for the first time
- Cannot disable Google Play Protect
- Cannot grant accessibility permissions
- Screen-sharing reminder when call ends

### Scam Detection in Phone App

AI-powered real-time scam detection warns you during suspicious calls.

**Types detected:**
- Package delivery scams
- Job-seeking scams
- Toll road and billing scams
- Crypto scams
- Financial impersonation
- Gift card and prize scams
- Tech support scams

**How to enable:**
1. Open **Phone** app
2. Tap **More (⋮) > Settings > Caller ID & spam**
3. Enable **See caller and spam ID**
4. Enable **Filter spam calls**

### Scam Detection in Messages

Detects suspicious conversation patterns and unsafe links.

**How to enable:**
1. Open **Messages** app
2. Tap **More (⋮) > Settings > Spam protection**
3. Enable **Enable spam protection**

### OTP Protection (Android 16)

One-time passwords won't show on lock screen for devices that:
- Haven't been recently unlocked
- Aren't connected to known Wi-Fi

---

## 11. Network Security

### Disable 2G

2G networks are vulnerable to interception and cell site simulators.

**How to disable (if not using Advanced Protection):**
1. Go to **Settings > Network & internet > SIMs > [Your SIM]**
2. Toggle off **Allow 2G**

### Wi-Fi Security

**Disable auto-join for insecure networks:**
1. Go to **Settings > Network & internet > Internet**
2. Tap **Network preferences**
3. Disable **Connect to open networks**

**Forget insecure networks:**
1. Go to **Settings > Network & internet > Internet > Saved networks**
2. Remove networks you don't trust

### VPN

Use a VPN on public Wi-Fi:
1. Go to **Settings > Network & internet > VPN**
2. Configure your VPN provider

### DNS Settings

Use encrypted DNS:
1. Go to **Settings > Network & internet > Private DNS**
2. Select **Private DNS provider hostname**
3. Enter a provider (e.g., `dns.google` or `cloudflare-dns.com`)

---

## 12. USB Protection

Android 16 defaults USB connections to charging-only when locked.

### Features

- Prevents data transfer via USB when device is locked
- Protects against "juice jacking" attacks at public charging stations
- Blocks physical data extraction attempts

### How It Works

When Advanced Protection is enabled:
- USB defaults to charging-only when locked
- Must unlock device to enable data transfer

### Manual Configuration

1. Go to **Settings > Connected devices > USB**
2. When connected, choose **Charging only** unless you need data transfer

---

## 13. Find My Device

### How to Enable

1. Go to **Settings > Security & Privacy > Find My Device**
2. Toggle on **Use Find My Device**
3. Ensure location is enabled

### Features

- Locate your device on a map
- Play sound to find nearby device
- Secure device (lock with message)
- Erase device remotely
- Locate offline devices using nearby Android devices

### Find My Device Network

Android can find your device even when offline using Bluetooth signals from nearby Android devices.

1. Go to **Settings > Google > All services > Find My Device**
2. Toggle on **Find your offline devices**

### Using Find My Device

1. Go to android.com/find or use Find My Device app on another device
2. Sign in with your Google Account
3. Select your device
4. Choose action: Locate, Play Sound, Secure Device, Erase Device

---

## 14. Advertising & Tracking Controls

### Delete Advertising ID

Disabling AAID makes it harder for advertisers to track you.

**How to delete:**
1. Go to **Settings > Security & Privacy > Privacy Controls > Ads**
2. Tap **Delete advertising ID**
3. Confirm

### Disable Personalized Ads

1. Go to **Settings > Google > Ads**
2. Toggle off **Opt out of Ads Personalization**

### Unknown Tracker Alerts

Android detects unfamiliar tracking devices (like AirTags) moving with you.

**How to check:**
1. Go to **Settings > Security & Privacy > More security & privacy > Unknown tracker alerts**
2. Ensure it's enabled

---

## 15. Google Account Privacy

### Privacy Checkup

1. Go to **Settings > Google > Manage your Google Account**
2. Tap **Data & privacy**
3. Tap **Review your privacy settings**

### Activity Controls

Control what Google saves about your activity:

1. Go to **Settings > Google > Manage your Google Account > Data & privacy**
2. Under "History settings," review:
   - **Web & App Activity** – Search and app activity
   - **Location History** – Places you've been
   - **YouTube History** – Videos watched

For each:
- Turn off to stop saving
- Enable auto-delete (3, 18, or 36 months)

### Privacy Dashboard

View recent permission usage:

1. Go to **Settings > Security & Privacy > Privacy Controls > Privacy dashboard**
2. See which apps accessed location, camera, microphone in last 24 hours

---

## 16. Chrome & Browser Privacy

### Safe Browsing

**Enable Enhanced Protection:**
1. Open **Chrome**
2. Tap **More (⋮) > Settings > Privacy and security > Safe Browsing**
3. Select **Enhanced protection**

### Privacy Settings

1. Open **Chrome > Settings > Privacy and security**
2. Configure:
   - **Clear browsing data** – Regularly clear history, cookies, cache
   - **Always use secure connections** – Forces HTTPS
   - **Do Not Track** – Send request to sites (limited effectiveness)
   - **Preload pages** – Disable for more privacy

### Incognito Mode

For private browsing:
1. Open Chrome
2. Tap **More (⋮) > New Incognito tab**

**Note:** Incognito doesn't make you anonymous—your ISP and websites can still see your activity.

### Third-Party Cookies

1. Go to **Chrome > Settings > Site settings > Cookies**
2. Select **Block third-party cookies**

---

## 17. Additional Security Recommendations

### Software Updates

1. Go to **Settings > System > Software update**
2. Enable automatic updates
3. Install security patches promptly

### Lock Screen Notifications

1. Go to **Settings > Notifications > Notifications on lock screen**
2. Choose **Show sensitive content only when unlocked** or **Don't show any notifications**

### App Installation from Unknown Sources

1. Go to **Settings > Apps > Special app access > Install unknown apps**
2. Ensure all apps show **Not allowed**
3. Only enable temporarily when needed, then disable

### Backup Encryption

1. Go to **Settings > Google > Backup**
2. Ensure **Backup by Google One** is on
3. Backups are encrypted with your screen lock

### SIM Lock

1. Go to **Settings > Security & Privacy > More security & privacy > SIM lock**
2. Toggle on **Lock SIM**
3. Set a PIN (different from screen lock)

### Repair Mode (Android 16)

Securely prepare device for repair without exposing data:

1. Go to **Settings > System > Repair Mode**
2. Follow instructions to wipe data while allowing hardware diagnostics

### Trade-in Mode (Android 16)

Safely prepare device for resale:

1. Go to **Settings > System > Trade-in Mode**
2. Allows buyer to test hardware without accessing personal data

---

## Quick Reference: Essential Settings Checklist

| Setting | Location | Recommended |
|---------|----------|-------------|
| Advanced Protection | Settings > Security & Privacy > Advanced Protection | ✅ Enable |
| Strong Screen Lock | Settings > Security & Privacy > Device Unlock | ✅ PIN 6+ digits or password |
| Two-Factor Authentication | Google Account > Security | ✅ Enable |
| Identity Check | Settings > Security & Privacy > Theft Protection | ✅ Enable |
| Theft Detection Lock | Settings > Google > Theft Protection | ✅ Enable |
| Play Protect | Play Store > Play Protect | ✅ Ensure active |
| Passkeys | Settings > Passwords, passkeys & accounts | ✅ Use where available |
| App Permissions | Settings > Security & Privacy > Permission Manager | ⚙️ Review regularly |
| Location | Settings > Location > App permissions | ⚙️ Minimize "All the time" |
| Advertising ID | Settings > Security & Privacy > Ads | ❌ Delete |
| 2G | Settings > Network & internet > SIMs | ❌ Disable |
| Find My Device | Settings > Security & Privacy > Find My Device | ✅ Enable |
| Unknown Sources | Settings > Apps > Install unknown apps | ❌ Disable all |
| Lock Screen Notifications | Settings > Notifications | ⚙️ Hide sensitive |

---

## Conclusion

Android 16 represents Google's most comprehensive security update, with Advanced Protection Mode making it easy to enable maximum security with one toggle. Key priorities:

1. **Enable Advanced Protection Mode** – Activates all major security features at once
2. **Set up Identity Check** – Protects sensitive settings when away from trusted locations
3. **Enable Theft Protection features** – Theft Detection Lock, Offline Device Lock, Remote Lock
4. **Use Passkeys** – More secure than passwords, phishing-resistant
5. **Review app permissions regularly** – Revoke unnecessary access
6. **Delete your Advertising ID** – Reduces tracking
7. **Keep software updated** – Security patches are critical

By configuring these settings, you significantly strengthen your privacy and security against both common threats and sophisticated attacks.

---

*Last updated: January 2026 | Applies to Android 16*
*Note: Settings may vary slightly by device manufacturer (Pixel, Samsung, etc.)*
