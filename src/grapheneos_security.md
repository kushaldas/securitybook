# GrapheneOS Security & Privacy Settings Guide
## Latest Stable Release: 2026012100 (January 21, 2026)
## Latest Beta/Alpha Release: 2026012800 (January 28, 2026)
## Based on Android 16 QPR2

---

**Current Version Information:**
- **Stable Release:** 2026012100 (January 21, 2026)
- **Beta/Alpha Release:** 2026012800 (January 28, 2026)
- **Security Preview:** 2026012801 (includes patches through June 2026 ASB)
- **Android Base:** Android 16 QPR2 (BP4A.251205.006)
- **Kernel Versions:** 6.1.161 (GKI LTS), 6.6 LTS, 6.12.67 LTS
- **Vanadium Browser:** 144.0.7559.109.0

---

## 1. Overview

GrapheneOS is a privacy and security-focused mobile operating system based on the Android Open Source Project (AOSP). It is designed for users who require the highest level of mobile security, including journalists, activists, security researchers, and privacy-conscious individuals. Notably, Edward Snowden has publicly endorsed GrapheneOS as his mobile OS of choice.

<div class="info-block">
<svg class="admon-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#1565c0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><line x1="12" y1="16" x2="12" y2="12"/><line x1="12" y1="8" x2="12.01" y2="8"/></svg>
<div class="admon-body">
<div class="admon-title">Note</div>

I personally did not verify all details as I am running an older version of GrapheneOS.

</div></div>

### What's New in 2025-2026

**Latest Beta Release (2026012800 - January 28, 2026):**
- FusedLocationProvider: Restored pre-16-QPR1 GNSS usage policy (uses GNSS for both balanced and high power requests)
- Sandboxed Google Play: Added special case for SMS permission to enable SMS-based authentication for apps using Google Play services
- Sandboxed Google Play: Prevented Play Store from attempting to install unnecessary "Device configuration" package
- Improved secure app spawning compatibility with anti-tampering checks in certain apps
- Settings: Now requires device restart after changing secure app spawning setting
- Network Location: Renamed "GrapheneOS proxy" to "GrapheneOS Apple proxy" for clarity
- Network Location: Added "Apple China" server choice for China data compliance
- Pixel 8a, 9th/10th gen: Disabled NTP usage in Samsung gnssd
- Improved UI for Network/Sensors permissions in permission manager
- Fixed Material 3 Expressive styling for Contact/Storage Scopes UI
- Kernel 6.12 updated to 6.12.67
- Vanadium updated to 144.0.7559.109.0

**Current Stable Release (2026012100 - January 21, 2026):**
- Fixed upstream infinite loop bug in ProtoFieldFilter.skipBytes() causing system unusability in early boot
- libpng: Backported security patches
- Removed unused INTERNET permission from Pixel Camera Services
- Kernel 6.1 updated to 6.1.161, Kernel 6.12 updated to 6.12.66
- Vanadium updated through version 144.0.7559.90.0

**Security Preview Release (2026012801):**
- Includes patches through June 2026 Android Security Bulletin
- 8 Critical CVEs patched (CVE-2026-0039 through CVE-2026-0049)
- 38+ High-severity CVEs patched ahead of public disclosure
- Enable via Settings > System > System update > Receive security preview releases

**Recent Major Features:**
- **Android 16 QPR2 base** - Latest security patches and features
- **Security Preview Releases** - Get security patches months ahead of public disclosure
- **Pixel 10 support** - Full support for Pixel 10 family (no longer experimental as of January 2026)
- **Private Space integration** - Android 15+ feature fully supported as replacement for work profiles
- **Enhanced memory tagging** - Expanded MTE support for hardware-level memory safety
- **Post-quantum cryptography** - Hybrid key exchange in Vanadium browser
- **Improved VPN leak protection** - Comprehensive protection against all forms of VPN bypasses
- **OEM partnership announced** - Non-Pixel devices expected Q4 2026 or Q1 2027
- **Lockscreen widget support** - Enabled in December 2025 release

### Key Differentiators from Stock Android

| Feature | Stock Android | GrapheneOS |
|---------|---------------|------------|
| Google Services | Deeply integrated with privileged access | Optional, fully sandboxed, no special privileges |
| Network Permission | Not available | Per-app toggle to completely block network |
| Sensors Permission | Limited | Per-app toggle for accelerometer, gyroscope, etc. |
| Auto-Reboot | Not available | Configurable 10 min to 72 hours (default: 18 hours) |
| Duress PIN | Not available | Instantly wipes device when entered |
| USB Protection | Software-only | Hardware + software, blocks data lines |
| Exploit Mitigations | Standard | Hardened malloc, kernel hardening, MTE |
| Update Speed | Monthly patches | Security patches months ahead via preview releases |

---

## 2. Supported Devices

GrapheneOS exclusively supports Google Pixel devices due to their hardware security features, including the Titan M2 security chip and hardware-backed attestation.

### Currently Supported (Full Support)

| Device | Codename | Support Until |
|--------|----------|---------------|
| Pixel 10 Pro Fold | rango | ~2032 |
| Pixel 10 Pro XL | mustang | ~2032 |
| Pixel 10 Pro | blazer | ~2032 |
| Pixel 10 | frankel | ~2032 |
| Pixel 9a | toki | ~2031 |
| Pixel 9 Pro Fold | comet | ~2031 |
| Pixel 9 Pro XL | komodo | ~2031 |
| Pixel 9 Pro | caiman | ~2031 |
| Pixel 9 | tokay | ~2031 |
| Pixel 8a | akita | ~2031 |
| Pixel 8 Pro | husky | ~2030 |
| Pixel 8 | shiba | ~2030 |
| Pixel Fold | felix | ~2028 |
| Pixel Tablet | tangorpro | ~2028 |
| Pixel 7a | lynx | ~2028 |
| Pixel 7 Pro | cheetah | ~2027 |
| Pixel 7 | panther | ~2027 |
| Pixel 6a | bluejay | ~2027 |
| Pixel 6 Pro | raven | ~2026 |
| Pixel 6 | oriole | ~2026 |

### Device Requirements

- **OEM-unlockable bootloader** - Carrier-locked devices (e.g., Verizon) are NOT supported
- **Titan M/M2 security chip** - Required for hardware-based security features
- **Google hardware** - Only official Pixel devices meet security requirements

### Future Support

GrapheneOS announced in October 2025 a partnership with a "major Android OEM" to support Snapdragon-powered flagship devices, expected Q4 2026 or Q1 2027.

---

## 3. Installation

### Prerequisites

- Unlocked Pixel device (not carrier-locked)
- Computer with Chrome/Chromium browser (for web installer)
- USB cable

### Web Installer (Recommended)

1. Go to **https://grapheneos.org/install/web**
2. Connect your Pixel via USB
3. Follow on-screen instructions to:
   - Enable OEM unlocking in Developer Options
   - Unlock the bootloader
   - Flash GrapheneOS
   - Lock the bootloader (critical for security)

### Important Notes

- **Always lock the bootloader after installation** - An unlocked bootloader defeats security
- Installation takes approximately 10-15 minutes
- All data will be erased during installation
- The web installer prevents bricking - it's very safe

---

## 4. Initial Setup

### Setup Wizard Security Features

GrapheneOS's Setup Wizard includes enhanced security checks:

1. **Bootloader Warning** - Alerts if bootloader is unlocked with option to reboot to fastboot
2. **OEM Unlocking Auto-Disable** - Disables OEM unlocking at end of setup (toggle to opt-out)

### Recommended Initial Configuration

After completing basic setup:

1. **Set a strong lock method**
   - Settings > Security & privacy > Device unlock > Screen lock
   - Use a strong password (16+ characters) or secure PIN (6+ digits)
   - Consider enabling **Scramble PIN input layout**

2. **Configure fingerprint with 2FA PIN** (optional)
   - Adds requirement to enter short PIN after fingerprint
   - Provides strong passphrase security with fingerprint convenience

3. **Enable Duress PIN/Password**
   - Settings > Security & privacy > Device unlock > Duress Password
   - Set BOTH a duress PIN and password
   - This will wipe the device instantly when entered

4. **Review exploit protection defaults**
   - Settings > Security & privacy > Exploit protection
   - Default settings are secure; customize as needed

---

## 5. Device Unlock & Authentication

### Screen Lock Options

**Location:** Settings > Security & privacy > Device unlock > Screen lock

| Method | Security Level | Notes |
|--------|---------------|-------|
| Password | Highest | Up to 128 characters (vs 16 on stock Android) |
| PIN | High | Use 6+ random digits |
| Pattern | Medium | Not recommended |
| None | None | Never use |

### PIN Scrambling

**Location:** Settings > Security & privacy > Device unlock > Scramble PIN input layout

- Randomizes keypad layout each time
- Prevents shoulder-surfing and smudge attacks
- Recommended: **Enable**

### Two-Factor Fingerprint Unlock

**Location:** Settings > Security & privacy > Device unlock

When enabled:
1. Authenticate with fingerprint
2. Then enter a short PIN to complete unlock

**Benefits:**
- Use a strong passphrase as primary unlock
- Convenience of fingerprint + short PIN for daily use
- Failed PIN attempts count toward lockout limit

### Duress PIN/Password

**Location:** Settings > Security & privacy > Device unlock > Duress Password

- **Both** a duress PIN and password are required
- When entered **anywhere** credentials are requested (lockscreen, settings prompts):
  - Device is **immediately and irreversibly wiped**
  - All installed eSIMs are wiped
  - Wipe cannot be interrupted
  - Device is NOT bricked - can reinstall GrapheneOS

**Critical Rules:**
- If duress PIN equals your real PIN, the real PIN takes precedence (no wipe)
- Check local laws regarding evidence destruction before using
- Do NOT use simple sequences like 1234 that others might guess

### Fingerprint Security Improvements

GrapheneOS limits fingerprint attempts to **5 total** (vs 20 on stock Android with delays):
- Makes intentional lockout easy (use wrong finger 5 times)
- Significantly reduces brute-force risk

---

## 6. Exploit Protection

**Location:** Settings > Security & privacy > Exploit protection

GrapheneOS includes extensive hardening against memory corruption and other exploits.

### Auto Reboot

**Purpose:** Returns device to "at rest" state, clearing encryption keys from memory

| Setting | Effect |
|---------|--------|
| **10 minutes - 72 hours** | Device reboots if not unlocked within this time |
| **Off** | Disabled (not recommended) |
| **Default: 18 hours** | Good balance for most users |

**Recommendation:** Set to **8-12 hours** for higher security, or keep default 18 hours

**How it works:**
- Timer starts when device locks
- Unlocking any profile resets timer
- After timeout, device reboots to Before First Unlock (BFU) state
- All encryption keys cleared, data fully at rest

### USB-C Port

See [Section 12](#12-usb-c-port--pogo-pins-control) for detailed configuration.

### Wi-Fi Auto-Off

**Purpose:** Disables Wi-Fi after disconnect to reduce attack surface

- **Options:** 10 minutes, 30 minutes, 1 hour, 2 hours, Off
- **Recommendation:** 10 minutes

### Bluetooth Auto-Off

**Purpose:** Disables Bluetooth after disconnect to reduce attack surface

- **Options:** Same as Wi-Fi
- **Recommendation:** 10 minutes

### Secure App Spawning

**Purpose:** Each app gets unique randomized memory layout (ASLR secrets)

- **Default:** Enabled
- **Effect:** Prevents cross-app identifier leaks, hardens exploit mitigations
- **Trade-off:** Slightly slower cold app starts, slightly higher memory
- **Recommendation:** Keep enabled

### Native Code Debugging

**Purpose:** Controls ptrace access for debugging

- **Bundled apps:** Always blocked
- **User apps:** Allowed by default (for compatibility)
- **Recommendation:** Disable for all apps unless needed for development

### Dynamic Code Loading Toggles

Control JIT compilation and dynamic code loading:

| Toggle | Default | Purpose |
|--------|---------|---------|
| Dynamic code loading from memory | Varies | Blocks in-memory code execution |
| Dynamic code loading from storage | Varies | Blocks loading code from files |
| WebView JIT | Enabled for user apps | JavaScript JIT in WebView |

**Recommendation:** Disable all for apps that don't need them

---

## 7. Network Permission

**Location:** App info > Permissions > Network (per-app)

GrapheneOS adds a **Network permission** not available in stock Android.

### How It Works

- When disabled, app sees network as "down" (not permission denied)
- Blocks both direct network access and localhost (prevents cross-profile communication)
- Apps handle gracefully since they think network is unavailable

### Configuration

1. During app installation, toggle Network off if not needed
2. Or go to Settings > Apps > [App] > Permissions > Network

### Use Cases

- **Calculator apps:** Don't need network
- **Offline games:** Don't need network
- **Document editors:** May not need network
- **Privacy-sensitive apps:** Prevent data exfiltration

---

## 8. Sensors Permission

**Location:** Settings > Apps > [App] > Permissions > Sensors

GrapheneOS adds a **Sensors permission** for:
- Accelerometer
- Gyroscope
- Compass/magnetometer
- Barometer
- Thermometer
- Other device sensors

### How It Works

- When denied, apps receive zeroed sensor data
- Notification appears when app tries to access blocked sensors
- Does NOT affect Camera, Microphone, or Body Sensors (separate permissions)

### Global Default

**Location:** Settings > Security & privacy > More security & privacy

Toggle: **Deny Sensors permission by default for newly installed apps**

**Recommendation:** Enable, then grant to apps that need it

---

## 9. Storage Scopes

**Location:** Settings > Apps > [App] > Permissions > Storage Scopes

A privacy-preserving alternative to granting full storage access.

### How It Works

1. Instead of granting storage permission, enable **Storage Scopes**
2. App believes it has full storage access
3. App can only see files it created
4. Optionally add specific files/folders as "scopes" for app to access

### Configuration

1. Go to app's permissions
2. Instead of granting Files/Media, enable Storage Scopes
3. Add specific files/folders if app needs access to existing files

### Limitations

- If app is uninstalled and reinstalled, it loses access to its previously created files
- Workaround: Grant access via SAF (Storage Access Framework) picker

### Use Cases

- **Photo editors:** Give access only to specific folders
- **Music players:** Access only your music directory
- **Document apps:** Access only Documents folder

---

## 10. Contact Scopes

**Location:** Settings > Apps > [App] > Permissions > Contact Scopes

Alternative to granting full contacts access.

### How It Works

1. Enable Contact Scopes instead of granting Contacts permission
2. App believes it has contacts access
3. By default, app sees empty contact list
4. Selectively add specific contacts or groups

### Configuration

1. Go to app's permissions
2. Enable Contact Scopes (don't grant Contacts permission)
3. Add specific contacts the app should see

### Use Cases

- **Messaging apps:** Share only contacts you message
- **Social apps:** Share only relevant contacts
- **Business apps:** Share only work contacts

---

## 11. User Profiles & Private Space

GrapheneOS significantly enhances Android's profile system.

### User Profiles

**Location:** Settings > System > Multiple users

GrapheneOS supports **32 profiles** (vs 4 on stock Android).

**Key Features:**
- Each profile has completely separate apps, data, encryption keys
- Apps cannot communicate across profiles
- Separate VPN configurations per profile

#### Creating a Profile

1. Settings > System > Multiple users
2. Tap "Add user"
3. Configure profile name and settings

#### End Session

Completely shuts down a profile:
- Removes encryption keys from memory
- Stops all background processes
- Returns profile to "at rest" state

### Private Space (Android 15+)

**Location:** Settings > Security & privacy > Private Space

An isolated workspace nested inside any user profile.

**Advantages over Work Profile:**
- Better OS integration
- Stronger isolation
- Lockable with separate authentication
- Hidden from app drawer when locked

#### Setup

1. Settings > Security & privacy > Private Space
2. Enter current PIN/password
3. Configure Private Space authentication

#### Key Behaviors

- When locked: Apps don't run, no notifications
- Separate VPN configuration possible
- Apps show shield icon in launcher
- Can install apps directly or via Google Play (if installed in Private Space)

**Recommendation:** Use Private Space instead of work profiles managed by third-party apps

### Notification Forwarding

**Location:** Within each profile's settings

Forward notifications from background profiles to active profile:
- Disabled by default
- Enable per-profile where needed

---

## 12. USB-C Port & Pogo Pins Control

**Location:** Settings > Security & privacy > Exploit protection > USB-C port

### Modes

| Mode | Description |
|------|-------------|
| **Off** | USB fully disabled (including charging) - maximum security |
| **Charging-only** | Always data disabled, charging only |
| **Charging-only when locked** | Data works when unlocked, charging-only when locked (DEFAULT) |
| **Charging-only when locked, except before first unlock** | Same as above but allows data in BFU state |
| **On** | USB always enabled |

### How It Differs from Stock Android

| Aspect | Stock Android | GrapheneOS |
|--------|---------------|------------|
| Level | Software only | Hardware + software |
| Data lines | OS-level block | Hardware disabled |
| New connections | Allowed until toggle | Blocked immediately when locked |
| Alternate modes (DisplayPort) | Still work | Disabled when locked |

### Recommendation

- **Default (Charging-only when locked)** - Good for most users
- **Charging-only** - If you never use USB data
- **Off** - Maximum security, charge only when powered off

---

## 13. Wi-Fi & Bluetooth Privacy

### Wi-Fi MAC Randomization

**Location:** Settings > Network & internet > Wi-Fi > [Network] > Privacy

GrapheneOS uses **per-connection MAC randomization** by default:
- New random MAC for each connection (not just per-network)
- DHCP state flushed before reconnecting
- Significantly harder to track across reconnections

### Wi-Fi Auto-Off

**Location:** Settings > Security & privacy > Exploit protection

- Automatically disables Wi-Fi after disconnection
- Reduces attack surface when not actively using Wi-Fi

### Bluetooth Privacy

- Set device name to something generic: Settings > Bluetooth > Device name
- Recommendation: Set to "Device" or similar
- Enable Bluetooth auto-off in Exploit protection

### Scanning Settings

**Location:** Settings > Location > Location services

| Setting | Recommendation |
|---------|---------------|
| Wi-Fi scanning | OFF |
| Bluetooth scanning | OFF |

These allow location tracking even when Wi-Fi/Bluetooth are "off."

---

## 14. VPN Configuration

### Always-On VPN

**Location:** Settings > Network & internet > VPN > [Your VPN] > gear icon

GrapheneOS enables these toggles **by default**:
- Always-on VPN
- Block connections without VPN

### Improved Leak Protection

GrapheneOS fixes multiple VPN leak vectors:

| Leak Type | Stock Android | GrapheneOS |
|-----------|---------------|------------|
| DNS before VPN up | Can leak | Fixed |
| DNS to VPN server outside tunnel | Can leak | Fixed |
| Multicast packets | Can bypass | Blocked |
| Cross-profile multicast | Possible | Blocked |
| Interface bypass (setsockopt) | Possible | Blocked |

### Per-Profile VPN

Each profile (user profile, Private Space) has **independent VPN configuration**:
- Can use different VPNs
- Can have different exit IPs/countries
- Complete isolation

### Private DNS

**Location:** Settings > Network & internet > Private DNS

**Recommendation:** Use a privacy-respecting DNS provider:
- `dns.quad9.net` (Quad9)
- Custom NextDNS configuration
- Or your VPN's DNS

### Internet Connectivity Checks

**Location:** Settings > Network & internet > Internet connectivity checks

Options:
- **GrapheneOS server** (default) - Privacy-preserving
- **Standard (Google)** - For blending in
- **Off** - May cause issues with captive portals

---

## 15. Sandboxed Google Play

GrapheneOS allows running Google Play as a **regular sandboxed app** with no special privileges.

### Key Properties

- Google Play runs as normal app - no system-level access
- Cannot access device identifiers (IMEI, etc.)
- All permissions revocable
- Only available within the profile where installed
- Location requests rerouted to GrapheneOS implementation by default

### Installation

1. Open **Apps** (GrapheneOS app store)
2. Select **Google Play services**
3. Install (automatically includes Play Store)
4. Grant battery optimization exception for push notifications

### Configuration

**Location:** Settings > Apps > Sandboxed Google Play

| Setting | Purpose |
|---------|---------|
| Reroute location requests | Uses GrapheneOS location instead of Google's (default: on) |

### Profile Strategy

**Option 1: Owner profile** - Simplest, all apps can use Play services

**Option 2: Separate profile** - Install Play in secondary profile for isolation:
1. Create secondary user
2. Install sandboxed Google Play there
3. Install apps needing Play services there
4. Keep main profile Google-free

### What Works

- App installations and updates
- In-app purchases
- Push notifications (with battery exception)
- Play Games services
- Play Asset/Feature Delivery
- Most apps requiring Play services

### Revoking Permissions

You can revoke ANY permission from Google Play services:
- Location, Contacts, Camera, etc.
- May break specific functionality but app won't crash

---

## 16. GrapheneOS Apps

GrapheneOS includes privacy and security-focused alternatives to standard apps.

### Apps (App Store)

The GrapheneOS app repository:
- Updates GrapheneOS apps
- Provides sandboxed Google Play installation
- Will distribute hardened open-source apps in future

### Vanadium Browser

Hardened Chromium-based browser with:

**Security Features:**
- Hardware memory tagging (MTE)
- Type-based Control Flow Integrity (CFI)
- JavaScript JIT disabled by default (per-site toggle)
- Dynamic code execution blocked for non-JIT processes
- Strict site isolation

**Privacy Features:**
- Built-in ad/tracker blocking (EasyList + EasyPrivacy)
- Third-party cookies disabled by default
- Enhanced state partitioning
- Reduced user agent / client hints
- DuckDuckGo default search

**Configuration:**
- JIT: Disabled by default, enable per-site via address bar menu
- Content filtering: Enabled by default, toggle per-site

### Auditor

Hardware-based attestation app:

**Purpose:**
- Verify device authenticity and integrity
- Detect bootloader unlocking or OS tampering
- Monitor for security regressions

**Setup:**
1. Use another device as "Auditor"
2. On device to verify, open Auditor > Auditee
3. Scan QR code with Auditor device
4. Optionally set up remote attestation at attestation.app

### Secure Camera

Privacy-focused camera app:
- EXIF metadata stripped by default
- Location tagging disabled by default
- No unnecessary permissions
- Open source

### Secure PDF Viewer

Sandboxed PDF viewer:
- Isolated rendering
- Protection against malicious PDFs
- Pinch to zoom, text selection
- Encrypted PDF support

---

## 17. Backup & Encryption

### Seedvault Encrypted Backup

**Location:** Settings > System > Backup

GrapheneOS includes Seedvault for encrypted backups.

**Features:**
- End-to-end encryption
- Local backup support
- Cloud storage support (any provider with storage app)

**Setup:**
1. Settings > System > Backup
2. Choose backup location
3. Set encryption password
4. Select apps to back up

### Full-Disk Encryption

GrapheneOS uses Android's file-based encryption with enhancements:
- 32-byte file name padding (vs 16 bytes)
- Per-profile encryption keys
- Hardware-backed key storage (Titan M2)

### Data at Rest

**Before First Unlock (BFU):**
- Most data encrypted and inaccessible
- Only critical functions available

**After First Unlock (AFU):**
- Credential-encrypted data accessible
- Auto-reboot returns device to BFU state

---

## 18. System Updates

### Automatic Updates

**Location:** Settings > System > System update

GrapheneOS provides seamless automatic updates:
- Downloads in background
- Installs without interrupting usage
- Automatic rollback if update fails
- A/B partition system for safety

### Security Preview Releases

**Location:** Settings > System > System update > Receive security preview releases

**Benefits:**
- Get security patches **months before** public disclosure
- Currently includes patches through June 2026 ASB
- Same stability as regular releases

**How It Works:**
- GrapheneOS participates in Android security embargo
- Can ship patches before disclosure (unlike stock OS)
- Preview releases increment build number by 1

**Recommendation:** Enable for maximum security

### Update Frequency

- **Regular releases:** Within days of Android security bulletin
- **Preview releases:** Months ahead of disclosure
- **Feature updates:** As developed

---

## 19. Advanced Settings

### Connectivity Checks

**Location:** Settings > Network & internet > Internet connectivity checks

Controls which server verifies internet connectivity:
- GrapheneOS (default, private)
- Standard Android (Google, for blending in)
- Disabled

### Attestation Provisioning

**Location:** Settings > Security & privacy > More security & privacy

Controls attestation key provisioning:
- GrapheneOS proxy (default, private)
- Direct (Google)

### GNSS / Location

**Network Location:**
- GrapheneOS provides opt-in network location
- Uses proxy to Apple's service (or direct)
- Building own database for future offline support

**SUPL (Assisted GPS):**
- Proxied through GrapheneOS by default
- Can switch to carrier default or disable

### Clipboard Privacy

**Location:** Settings > Security & privacy > Privacy controls > Show clipboard access

Shows notification when apps access clipboard content from other apps.

### Privacy Indicators

GrapheneOS enables location indicator (in addition to camera/mic):
- Green dot shows when any app accesses location
- Works for all location APIs (not just GNSS)

### Accessibility Warning

**NEVER grant Accessibility permission** unless absolutely required:
- Extremely dangerous permission
- Can read all screen content
- Can perform actions on your behalf

---

## 20. Quick Reference Checklist

### Essential Security Settings

- [ ] **Lock bootloader** after installation
- [ ] **Strong password/PIN** - 6+ digit PIN or 16+ char password
- [ ] **Enable Scramble PIN** - Settings > Security & privacy > Device unlock
- [ ] **Set Duress PIN/Password** - Both required
- [ ] **Auto-reboot: 8-18 hours** - Settings > Security & privacy > Exploit protection
- [ ] **USB-C: Charging-only when locked** (default)
- [ ] **Wi-Fi/Bluetooth auto-off: 10 minutes**
- [ ] **Enable VPN with lockdown** - Block connections without VPN
- [ ] **Enable Security Preview releases** - Get patches early

### Privacy Settings

- [ ] **Disable Wi-Fi/Bluetooth scanning** - Settings > Location
- [ ] **Use per-connection MAC randomization** (default)
- [ ] **Set generic Bluetooth name** - "Device"
- [ ] **Use Private DNS** - Quad9 or similar
- [ ] **GrapheneOS connectivity checks** (default)
- [ ] **Review app Network permissions** - Deny where not needed
- [ ] **Enable Sensors deny by default** - Settings > Security & privacy

### Per-App Best Practices

- [ ] **Deny Network** for apps that don't need internet
- [ ] **Deny Sensors** for apps that don't need motion data
- [ ] **Use Storage Scopes** instead of full storage access
- [ ] **Use Contact Scopes** instead of full contacts access
- [ ] **Disable native debugging** - Settings > Security & privacy > Exploit protection
- [ ] **Review all permissions** after installation

### Advanced Hardening

- [ ] **Separate profile for Google Play** - Isolate from main profile
- [ ] **Use Private Space** for sensitive apps
- [ ] **Enable Auditor remote attestation** - attestation.app
- [ ] **Disable all dynamic code loading** for apps that don't need it
- [ ] **Set auto-reboot to minimum tolerable** (4-8 hours for high security)
- [ ] **Consider Charging-only USB** if you never use data transfer

---

## Additional Resources

- **Official Documentation:** https://grapheneos.org
- **Features Overview:** https://grapheneos.org/features
- **Usage Guide:** https://grapheneos.org/usage
- **FAQ:** https://grapheneos.org/faq
- **Releases:** https://grapheneos.org/releases
- **Discussion Forum:** https://discuss.grapheneos.org
- **Community:**
  - Matrix: #community:grapheneos.org
  - Discord: discord.com/invite/grapheneos
  - Reddit: r/GrapheneOS
  - X/Twitter: @GrapheneOS
  - Mastodon: @GrapheneOS@grapheneos.social
  - Bluesky: @grapheneos.org

---

**Document Information:**
- *Guide Version: 1.2*
- *Last Updated: January 31, 2026*
- *GrapheneOS Stable Release: 2026012100 (January 21, 2026)*
- *GrapheneOS Beta Release: 2026012800 (January 28, 2026)*
- *Android Base: Android 16 QPR2 (BP4A.251205.006)*
- *Vanadium Browser: 144.0.7559.109.0*
- *Supported Devices: Pixel 6 through Pixel 10 families*

*GrapheneOS is under active development. Security preview releases provide patches months ahead of public disclosure (currently through June 2026). Check official documentation at grapheneos.org for the latest features and recommendations.*
