![Horizon logo](./files/shared/usr/share/plymouth/themes/spinner/watermark.png)<br>
**Where the Known Meets the Unknowable.**

---

### Info
This image is mostly only for me, but it should work for others too.


### Rebase

From Silverblue/Kinoite/any:
```bash
# Aster NVIDIA (KDE Plasma)
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/alxhr0/horizon-aster-nvidia:latest

# Aster (KDE Plasma) 
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/alxhr0/horizon-aster:latest

# Arcturus NVIDIA (GNOME)
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/alxhr0/horizon-arcturus-nvidia:latest

# Arcturus (GNOME) 
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/alxhr0/horizon-arcturus:latest
```