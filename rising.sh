rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/RisingOS-Revived/android -b qpr2 --git-lfs -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/2faced-sword/android_device_xiaomi_apollo -b rising device/xiaomi/apollo && \
git clone https://github.com/2faced-sword/android_vendor_xiaomi_apollo -b main vendor/xiaomi/apollo && \
git clone https://github.com/2faced-sword/kernel_xiaomi_apollo -b aosp-15 kernel/xiaomi/apollo && \
git clone https://github.com/2faced-sword/hardware_xiaomi -b fifteen hardware/xiaomi && \
/opt/crave/resync.sh; \
rm -rf  hardware/qcom-caf/common; \
git clone https://github.com/2faced-sword/android_hardware_qcom-caf_common -b lineage-22.2 hardware/qcom-caf/common && \
export BUILD_USERNAME=krishy; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/New Delhi; \
source build/envsetup.sh; \
riseup apollo user; \
rise b && \
mv out/target/product/apollo/crDroidAndroid*.zip .
export WITH_GMS=false; \
rise b && \
mv out/target/product/apollo/crDroidAndroid*.zip .
