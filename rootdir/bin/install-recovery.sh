#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):80740352:2926244e046c766f81f21c009d5e50afe25ce9d2; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):33554432:3b92e231678aed778c54e20ed6423bc58436bfb5 \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):80740352:2926244e046c766f81f21c009d5e50afe25ce9d2 && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

