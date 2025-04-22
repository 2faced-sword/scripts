rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/crdroidandroid/android -b 15.0 --git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh; \
git clone https://github.com/2faced-sword/android_device_xiaomi_apollo -b crdroid device/xiaomi/apollo && \
git clone https://github.com/2faced-sword/android_vendor_xiaomi_apollo -b main vendor/xiaomi/apollo && \
git clone https://github.com/2faced-sword/kernel_xiaomi_apollo -b main kernel/xiaomi/common-sm8250 && \
git clone https://github.com/2faced-sword/hardware_xiaomi -b fifteen hardware/xiaomi && \
export BUILD_USERNAME=Krishy; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/New Delhi; \
source build/envsetup.sh; \
breakfast apollo user; \
mka bacon
