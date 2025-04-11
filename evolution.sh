rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest -b vic --git-lfs -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/2faced-sword/android_device_xiaomi_apollon -b vic device/xiaomi/apollon && \
git clone https://github.com/2faced-sword/android_device_xiaomi_sm8250-common -b lineage-22.2 device/xiaomi/sm8250-common && \
git clone https://github.com/2faced-sword/proprietary_vendor_xiaomi_apollon -b lineage-22.2 vendor/xiaomi/apollon && \
git clone https://github.com/2faced-sword/proprietary_vendor_xiaomi_sm8250-common -b lineage-22.2 vendor/xiaomi/sm8250-common && \
git clone https://github.com/2faced-sword/android_kernel_xiaomi_sm8250 -b lineage-22.2 kernel/xiaomi/sm8250-common && \
git clone https://github.com/2faced-sword/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi && \
/opt/crave/resync.sh; \
export BUILD_USERNAME=Krishy24; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/New Delhi; \
source build/envsetup.sh; \
lunch lineage_apollon-bp1a-user; \
make installclean; \
m evolution
